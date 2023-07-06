import 'package:checkbox/work/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CheckedController());
    String valuep;
    return Scaffold(
      appBar: AppBar(
        title: "Check Box".text.make(),
      ),
      body: Column(
        children: [
          Obx(() => Text("${controller.isChecked.value}")),
          Obx(
            () => CheckboxListTile(
                title: "Option1".text.make(),
                value: controller.isChecked.value,
                onChanged: (value) {
                  controller.isChecked.value = !controller.isChecked.value;
                  print(controller.isChecked.value);
                  print("${value}");
                  var Value = controller.isChecked.value;
                }),
          ),
        ],
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<HomePage> createState() => _HomePage();
// }

// class _HomePage extends State<HomePage> {
//   String _groupValue = '';

//   void checkRadio(String value) {
//     setState(() {
//       _groupValue = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SafeArea(
//           child: Center(
//         child: Column(
//           children: [
//             Container(
//               height: 50,
//             ),
//             Text(_groupValue),
//             ListTile(
//               title: Text('Option6'),
//               leading: Radio(
//                   value: 'Option1',
//                   groupValue: _groupValue,
//                   onChanged: (value) {
//                     checkRadio(value as String);
//                   }),
//             ),
//             ListTile(
//               title: Text('Option2'),
//               leading: Radio(
//                   value: 'Option2',
//                   groupValue: _groupValue,
//                   onChanged: (value) {
//                     checkRadio(value as String);
//                   }),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
