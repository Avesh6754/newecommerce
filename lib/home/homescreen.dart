// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: h,
          width: w,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(width: 1.4, color: Colors.black)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Hello\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.grey)),
                          TextSpan(
                              text: 'Avesh ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 60,
                      width: 358,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(12),
                        
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.search,size: 35,color: Colors.grey,),
                          SizedBox(width: 10,),
                          Text('Search for shoes',style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 60,
                      width:60,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade300
                      ),
                      child: Icon(Icons.tune,color: Colors.purple,size: 35,),
                      
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                textmethodforbold(text: 'Special offer'),
                SizedBox(height: 15,),
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 15,),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: '25% Off',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600))
                      ]))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text textmethodforbold({required String text}) => Text('$text',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),);
}
