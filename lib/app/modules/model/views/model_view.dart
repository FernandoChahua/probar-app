import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/components/buttons.dart';
import 'package:prob_ar_app/app/common/components/loading.dart';
import 'package:prob_ar_app/app/common/components/padding.dart';
import 'package:prob_ar_app/app/common/components/texts.dart';
import 'package:prob_ar_app/app/common/pages/main_page.dart';
import 'package:prob_ar_app/app/common/pages/pushed_page.dart';
import 'package:prob_ar_app/app/common/theme/palette.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_model.dart';

import 'package:prob_ar_app/app/modules/model/controllers/model_controller.dart';

class ModelView extends GetView<ModelController> {
  ModelView({super.key}) {
    final id = int.parse(Get.parameters['variantId']!);
    if (!Get.isRegistered<ModelController>(tag: '$id')) {
      Get.put(ModelController(id: id), tag: '$id');
    }
    controller = Get.find<ModelController>(tag: '$id');
  }
  late final ModelController controller;
  @override
  Widget build(BuildContext context) {
    return PushedPage(
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Texts.bold(
          text: "Detalles",
          fontSize: 18,
          color: Palette.white,
        ),
      ),
      child: SafeArea(
        child: Obx(
          () => controller.stateScreen().when(
                () => Center(
                  child: Padding(
                    padding: CustomPadding.top(25),
                    child: const Texts.w400(
                      text: "Nada que mostrar",
                      fontSize: 14,
                      color: Palette.primaryText,
                    ),
                  ),
                ),
                loading: () => const CustomLoading.center(),
                data: (data) => _buildBody(data.productVariants),
              ),
        ),
      ),
    );
  }

  Widget _buildBody(List<VariantModel> data) {
    return Padding(
      padding: CustomPadding.fromLTRB(15, 15, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: AspectRatio(
              aspectRatio: 6 / 3,
              child: Obx(
                () => Image.network(
                  controller.selected().urlImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            children: const [
              Expanded(
                child: ColoredBox(
                  color: Palette.gray,
                  child: SizedBox(height: 1),
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = data[index];
                return InkWell(
                  onTap: () {
                    controller.setSelected(data: data, selectedId: item.id);
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 150,
                        child: Align(
                          child: AspectRatio(
                            aspectRatio: 6 / 3,
                            child: Image.network(
                              item.urlImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      if (index < data.length - 1)
                        const ColoredBox(
                          color: Palette.gray,
                          child: SizedBox(
                            height: 150,
                            width: 1,
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
          ),
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts.w700(
                  padding: CustomPadding.fromLTRB(20, 50, 20, 15),
                  text: controller.selected().brand!.title,
                  fontSize: 20,
                  color: Palette.darkGray,
                ),
                Texts.w500(
                  padding: CustomPadding.fromLTRB(20, 20, 20, 15),
                  text: controller.selected().description,
                  fontSize: 15,
                  alignment: TextAlign.justify,
                  color: Palette.gray,
                  height: 1.5,
                ),
              ],
            ),
          ),
          Center(
            child: Buttons.customColor(
              color: Palette.gray,
              onPressed: () {},
              padding: CustomPadding.symmetric(horizontal: 20, vertical: 5),
              radius: 0,
              child: const Texts.w400(
                text: "Probar",
                fontSize: 15,
                color: Palette.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
