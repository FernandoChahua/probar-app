import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/components/loading.dart';
import 'package:prob_ar_app/app/common/components/padding.dart';
import 'package:prob_ar_app/app/common/components/scroll_indicator.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/pages/main_page.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';
import 'package:prob_ar_app/app/data/brand_module/brand_model.dart';

import 'package:prob_ar_app/app/modules/home/controllers/home_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Texts.bold(
          text: 'Búsqueda de Marcas',
          fontSize: 15,
          color: Palette.white,
        ),
      ),
      child: Obx(
        () => controller.stateScreen().when(
              () => Column(
                children: [
                  Center(
                    child: Padding(
                      padding: CustomPadding.top(25),
                      child: const Texts.w400(
                        text: "No hay direcciones registradas",
                        fontSize: 14,
                        color: Palette.primaryText,
                      ),
                    ),
                  ),
                ],
              ),
              loading: () => const CustomLoading.center(),
              data: (data) => _buildBrands(data.results.obs),
            ),
      ),
    );
  }

  Widget _buildBrands(RxList<BrandModel> data) {
    final RefreshController refreshController = RefreshController();
    Future<void> _load() async {
      refreshController.footerMode!.value = await controller.loadMore();
    }

    Future<void> _refresh() async {
      refreshController.headerMode!.value = await controller.fetchAddresses();
      refreshController.footerMode!.value = LoadStatus.idle;
    }

    return data().isEmpty
        ? Column(
            children: [
              Center(
                child: Padding(
                  padding: CustomPadding.top(25),
                  child: const Texts.w400(
                    text: "No hay direcciones registradas",
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
                  final item = data()[index].obs;
                  return Padding(
                    padding: CustomPadding.fromLTRB(15, 2, 15, 0),
                    child: _buildSingleBrand(item, context),
                  );
                },
              ),
            ),
          );
  }

  Widget _buildSingleBrand(Rx<BrandModel> brand, BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Palette.transparent,
            child: Image.network(brand().urlLogoLink),
          ),
          onTap: () {
            Get.toNamed('/variant/${brand().id}');
          },
          contentPadding: CustomPadding.symmetric(vertical: 20, horizontal: 15),
          title: Texts.w600(
            text: brand().title,
            fontSize: 15,
          ),
        ),
        const ColoredBox(
          color: Palette.appBarColor,
          child: SizedBox(
            height: 1,
            width: double.infinity,
          ),
        )
      ],
    );
  }
}
