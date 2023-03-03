import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
///            *******************************    UNUSED  ********************************************
class DataViewController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  /*late*/ String? name;
  /*late*/ String? number;
  /*late*/ String? address;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    final info = await _firestore.collection('Information').get();
    int count = info.docs.length;
    dynamic Data = info.docs;
    name = Data.get('name');
    number = Data.get('number');
    address = Data.get('address');
    // for (var data in info.docs) {
    //   name = data.get('name');
    //   number = data.get('number');
    //   address = data.get('address');
    //   print(data.data());
    // }
  }
}
