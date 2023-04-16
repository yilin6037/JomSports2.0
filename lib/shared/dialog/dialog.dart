import 'package:get/get.dart';
import 'package:jomsports/shared/widget/button.dart';

class SharedDialog {
  static void alertDialog(String title, String message) {
    Get.defaultDialog(
        title: title,
        middleText: message,
        confirm: SharedButton(
            onPressed: () {
              Get.back();
            },
            text: 'Ok'));
  }

  static void errorDialog(){
    alertDialog('Error', 'Something went wrong!');
  }

  static void directDialog(String title, String message, dynamic page){
    Get.defaultDialog(
      title: title,
      middleText: message,
      confirm: SharedButton(onPressed: (){
        Get.offAll(page);
      }, text: 'Ok')
    );
  }
}
