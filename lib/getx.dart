import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CounterController extends GetxController{

 RxString image=''.obs;
void fun()async{

 try{ final imagecont=await ImagePicker();
  final pickimage=await imagecont.pickImage(source: ImageSource.gallery);
  if(pickimage!=null){
    image.value=pickimage.path.toString();
  }
  else{
    Get.snackbar('Image Status', 'error to pick',backgroundColor: Color(0XFF7a001e) );
  }}
 catch(e){print(e.toString());}
update();
}





}