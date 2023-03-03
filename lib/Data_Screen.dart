import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_ass1/firebase/DataViewController.dart';
import 'package:lab_ass1/firebase/fb_controller.dart';

class DataScreen extends StatelessWidget {
  DataScreen({Key? key}) : super(key: key);
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // DataViewController controllerImp =
  //     Get.put(DataViewController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Data List',
            style: GoogleFonts.aBeeZee(),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('Information').snapshots(),
              builder: (context, snapshot) {
                List<Text> DataInfo = [];

                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final messages = snapshot.data!.docs;
                for (var message in messages) {
                  final nameInfo = message.get('name');
                  final numberInfo = message.get('number');
                  final addressInfo = message.get('address');
                  final allData = Text(
                    'Name : $nameInfo\nNumber : $numberInfo\nAddress : $addressInfo\n*************************',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  );
                  DataInfo.add(allData);
                }
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          '********** Users Data **********',
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: DataInfo,
                      )
                    ],
                  ),
                );
              },
            )
          ],
        )

        // GetBuilder<DataViewController>(
        //   builder: (controller) => Center(
        //     child: ListView.builder(
        //       itemBuilder: (context, index) => ListTile(
        //         title: Text('Name${controllerImp.name}'),
        //         subtitle: Text(
        //             'Address${controllerImp.address}  Number : ${controllerImp.number}'),
        //       ),
        //     ),
        //   ),
        // )
        );
  }
}
