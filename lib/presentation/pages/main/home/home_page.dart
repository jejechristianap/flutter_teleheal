import 'package:flutter/material.dart';
import 'package:flutter_teleheal/config/styles/app_colors.dart';
import 'package:flutter_teleheal/data/repository.dart';
import 'package:flutter_teleheal/presentation/controller/home/home_controller.dart';
import 'package:flutter_teleheal/presentation/widgets/section_category.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (_) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.circle),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Flutter',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Icon(Icons.circle),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.outline),
                        color: AppColors.primary,
                      ),
                      child: const Center(
                        child: Text(
                          'Label',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.outline),
                        color: AppColors.primary,
                      ),
                      child: const Center(
                        child: Text(
                          'Label',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => SectionCategory(
                  sectionTitle: 'Rumah Sakit',
                  section: controller.getSectionHospital(),
                  onPressed: (i) {
                    controller.updateIndex(i);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (int i = 0; i < Repository().section.length; i++)
                          Padding(
                            padding: i == 0
                                ? const EdgeInsets.only(left: 18.0, right: 6.0)
                                : const EdgeInsets.only(left: 6.0, right: 6.0),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightBlue,
                              ),
                              child: Center(
                                child: Text(
                                  'Banner ${i + 1}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Obx(
                () => SectionCategory(
                  sectionTitle: 'Klinik',
                  section: controller.getSectionClinic(),
                  onPressed: (i) {
                    controller.updateIndexClinic(i);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
