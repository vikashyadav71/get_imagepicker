import 'dart:io';
import 'package:dumy/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MensIcc());
}

class MensIcc extends StatelessWidget {
  const MensIcc({super.key});

  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());
    return GetMaterialApp(
      home: Scaffold(
        body: Obx(
          () {return Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,

                child: controller.image.isEmpty
                    ? Icon(
                  Icons.error_outline,
                  color: Colors.red,
                )
                    : Image.file(File(controller.image.value!.toString(),),fit: BoxFit.cover,),
              ),
              const SizedBox(height: 40,),
              FilledButton(onPressed: (){  controller.fun();}, child: Text('Pick_image'))
            ],
          );},
        ),
      ),
    );
  }
}
