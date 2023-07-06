import 'package:get/get.dart';

class CheckedController extends GetxController {
  var isChecked = false.obs;

  RxMap<String, bool> values = {
    'Apple': false,
    'Banana': false,
    'Cherry': false,
    'Mango': false,
    'Orange': false,
  }.obs;

  var tmpArray = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpArray.add(key);
      }
    });
    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    tmpArray.clear();
    // Clear array after us
  }
}
