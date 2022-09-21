import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/components/loading.dart';
import 'package:prob_ar_app/app/common/components/padding.dart';
import 'package:prob_ar_app/app/common/components/scroll_indicator.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/pages/main_page.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_model.dart';

import 'package:prob_ar_app/app/modules/variant/controllers/variant_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class VariantView extends StatelessWidget {
  VariantView({super.key}) {
    final id = int.parse(Get.parameters['brandId']!);

    if (!Get.isRegistered<VariantController>(tag: '$id')) {
      Get.put(VariantController(id: id), tag: '$id');
    }
    controller = Get.find<VariantController>(tag: '$id');
  }
  late final VariantController controller;

  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Texts.bold(
          text: 'Búsqueda de Marcas',
          fontSize: 18,
          color: Palette.white,
        ),
      ),
      child: Column(
        children: [
          Obx(
            () => Expanded(
              child: controller.stateScreen().when(
                    () => Center(
                      child: Padding(
                        padding: CustomPadding.top(25),
                        child: const Texts.w400(
                          text: "No hay direcciones registradas",
                          fontSize: 14,
                          color: Palette.primaryText,
                        ),
                      ),
                    ),
                    loading: () => const CustomLoading.center(),
                    data: (data) => _buildVariants(data.results.obs),
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVariants(RxList<VariantModel> data) {
    final RefreshController refreshController = RefreshController();
    Future<void> _load() async {
      refreshController.footerMode!.value = await controller.loadMore();
    }

    Future<void> _refresh() async {
      refreshController.headerMode!.value = await controller.fetchVariants();
      refreshController.footerMode!.value = LoadStatus.idle;
    }

    return data().isEmpty
        ? Column(
            children: [
              Center(
                child: Padding(
                  padding: CustomPadding.top(25),
                  child: const Texts.w400(
                    text: "No hay productos registrados",
                    fontSize: 14,
                    color: Palette.primaryText,
                  ),
                ),
              ),
            ],
          )
        : Obx(
            () => SmartRefresher(
              controller: refreshController,
              enablePullUp: true,
              onLoading: _load,
              onRefresh: _refresh,
              header: const MaterialClassicHeader(),
              footer: ScrollIndicator.customFooterIndicator(
                'No hay más datos',
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: data().length,
                itemBuilder: (context, index) {
                  final itemLeft = data()[index].obs;
                  final itemRight =
                      index + 1 < data().length ? data()[index + 1].obs : null;
                  if (index % 2 == 0) {
                    return Padding(
                      padding: CustomPadding.fromLTRB(15, 2, 15, 0),
                      child: _buildRow(
                        context: context,
                        variantLeft: itemLeft,
                        variantRight: itemRight,
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
          );
  }

  Widget _buildRow({
    required Rx<VariantModel> variantLeft,
    Rx<VariantModel>? variantRight,
    required BuildContext context,
  }) {
    return Padding(
      padding: CustomPadding.vertical(5),
      child: Row(
        children: [
          Expanded(child: _buildSingleVariant(variantLeft, context)),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: variantRight != null
                ? _buildSingleVariant(variantRight, context)
                : const SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget _buildSingleVariant(Rx<VariantModel> variant, BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/model/${variant().id}');
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                child: AspectRatio(
                  aspectRatio: 6 / 3,
                  child: Image.network(
                    variant().urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ColoredBox(
                color: Palette.lightGray,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts.w600(
                            text: variant().title,
                            fontSize: 12,
                            padding: CustomPadding.all(10),
                            textOverflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Texts.w600(
                            text: variant().brand!.title,
                            fontSize: 14,
                            color: Palette.gray,
                            padding: CustomPadding.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                          ),
                          Texts.w500(
                            text: 'PROBAR',
                            fontSize: 13,
                            padding: CustomPadding.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              /*  ListTile(
                leading: CircleAvatar(
                  backgroundColor: Palette.transparent,
                  child: Image.network(brand().urlImage),
                ),
                title: Texts.w600(
                  text: brand().title,
                  fontSize: 15,
                ),
              ), */
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Palette.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
