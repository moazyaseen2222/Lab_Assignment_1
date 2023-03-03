import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Info.dart';
import 'fb_response.dart';

class FbAuthControllerImp extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late TextEditingController name;
  late TextEditingController number;
  late TextEditingController address;

  @override
  void onInit() {
    getData();
    name = TextEditingController();
    number = TextEditingController();
    address = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    number.dispose();
    address.dispose();
    super.dispose();
  }

  Future<FbResponse> create(Info info) async {
    return _firestore
        .collection('Information')
        .add(info.toMap())
        .then((value) => FbResponse(message: 'Success', success: true))
        .catchError((error) => FbResponse(message: 'Failed', success: false));
  }

  void getData() async {
    final info = await _firestore.collection('Information').get();
    for (var data in info.docs) {
      print(data.data());
    }
  }
}
