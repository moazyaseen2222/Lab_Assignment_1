import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_ass1/Data_Screen.dart';
import 'package:lab_ass1/firebase/fb_response.dart';

import '../firebase/Info.dart';
import 'firebase/fb_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  FbAuthControllerImp controllerImp =
      Get.put(FbAuthControllerImp(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(DataScreen());
                },
                icon: const Icon(Icons.list))
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Enter your information',
                      style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    //  const SizedBox(height: 20),
                    //
                    //  /// Name filed..
                    //  const SizedBox(height: 20),
                    //  GetBuilder<FbAuthControllerImp>(
                    //    builder: (controller) =>
                    // TextFormField(
                    //      controller: controller.name,
                    //      decoration: InputDecoration(
                    //          label: const Text('Name'),
                    //          border: OutlineInputBorder(
                    //            borderRadius: BorderRadius.circular(10),
                    //            borderSide:
                    //                const BorderSide(color: Colors.blue, width: 1),
                    //          )),
                    //   ),
                    //  ),
                    //
                    //  /// Number filed..
                    //  const SizedBox(height: 20),
                    //  GetBuilder<FbAuthControllerImp>(
                    //    builder: (controller) => TextField(
                    //      controller: controller.number,
                    //      // keyboardType: TextInputType.number,
                    //      decoration: InputDecoration(
                    //          label: const Text('Number'),
                    //          border: OutlineInputBorder(
                    //            borderRadius: BorderRadius.circular(10),
                    //            borderSide:
                    //                const BorderSide(color: Colors.blue, width: 1),
                    //          )),
                    //    ),
                    //  ),
                    //
                    //  /// Address field..
                    //  const SizedBox(height: 20),
                    //  GetBuilder<FbAuthControllerImp>(
                    //    builder: (controller) => TextField(
                    //      controller: controller.address,
                    //      decoration: InputDecoration(
                    //          label: const Text('Address'),
                    //          border: OutlineInputBorder(
                    //            borderRadius: BorderRadius.circular(10),
                    //            borderSide:
                    //                const BorderSide(color: Colors.blue, width: 1),
                    //          )),
                    //    ),
                    //  ),
                    //  const SizedBox(height: 20),
                    //
                    //  /// Sending and save button..
                    //  GetBuilder<FbAuthControllerImp>(
                    //    builder: (controller) =>
                    //    ElevatedButton(
                    //        onPressed: () {
                    //          controller.create(Info(
                    //              name: controller.name.text,
                    //              number: controller.number.text,
                    //              address: controller.address.text));
                    //        },
                    //        child: Text('Save', style: GoogleFonts.aBeeZee())),
                    //  ),

                    // GetBuilder<FbAuthControllerImp>(builder: (controller) {
                    //   return

                    GetBuilder<FbAuthControllerImp>(
                      builder: (controller) => Column(
                        children: [
                          TextFormField(
                            controller: controllerImp.name,
                            decoration: InputDecoration(
                                label: const Text('Name'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: controllerImp.number,
                            decoration: InputDecoration(
                                label: const Text('number'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                )),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: controllerImp.address,
                            decoration: InputDecoration(
                                label: const Text('address'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 1),
                                )),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                              onPressed: () async {
                                FbResponse response =
                                    await controllerImp.create(Info(
                                        name: controller.name.text,
                                        number: controller.number.text,
                                        address: controller.address.text));

                                if (response.success == true) {
                                  Get.snackbar(
                                      'Fire Store ', 'Data has been uploaded',
                                      colorText: Colors.white,
                                      backgroundColor: Colors.green,
                                      icon: const Icon(Icons.check,
                                          color: Colors.white));
                                  controllerImp.name.clear();
                                  controllerImp.number.clear();
                                  controllerImp.address.clear();
                                  Get.to(DataScreen());
                                } else {
                                  Get.snackbar(
                                      'Fire Store ', 'Failed to upload data',
                                      backgroundColor: Colors.red,
                                      colorText: Colors.white,
                                      icon: const Icon(Icons.error_outline,
                                          color: Colors.white));
                                }
                              },
                              child:
                                  Text('Save', style: GoogleFonts.aBeeZee())),
                        ],
                      ),
                    ),

                    // }
                    // ,)
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
