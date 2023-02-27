import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../routes/app_pages.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Baca'),
        backgroundColor: Color.fromARGB(255, 245, 49, 49),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Image.asset(
            'assets/tidak_ada.gif',
            height: Get.width * 0.5,
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Tidak ada history berita",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: SweetNavBar(
        currentIndex: 2,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
            iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ]),
              sweetBackground: Color.fromARGB(255, 247, 247, 247)),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.newspaper),
              sweetLabel: 'News',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.history),
              sweetLabel: 'History',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 251, 52, 2),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.person),
              sweetLabel: 'Profile',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
        ],
        onTap: (index) {
          if (index == 0) {
            Get.offAllNamed(Routes.HOME);
          } else if (index == 1) {
            Get.offAllNamed(Routes.ALL_NEWS);
          } else if (index == 2) {
            Get.offAllNamed(Routes.HISTORY);
          } else if (index == 3) {
            Get.offAllNamed(Routes.PROFILE);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 245, 49, 49),
          onPressed: () {
            // showDatePicker(context: context, initialDate: DateTime(2023), firstDate: DateTime(2000), lastDate: DateTime(2200),);

            Get.dialog(Dialog(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 400,
                child: SfDateRangePicker(
                  monthViewSettings:
                      DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
                  selectionMode: DateRangePickerSelectionMode.range,
                  showActionButtons: true,
                  onCancel: () => Get.back(),
                  onSubmit: (obj) {
                    if (obj != null) {
                      if ((obj as PickerDateRange).endDate != null) {
                        
                      }
                    }
                  },
                ),
              ),
            ));
          },
          child: Icon(Icons.search)),
    );
  }
}
