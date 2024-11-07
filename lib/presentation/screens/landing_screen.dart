import 'package:flutter/material.dart';

import 'cat_card.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

 TextEditingController searchController = TextEditingController();

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
         children: [
           Padding(
             padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.080,left: 20,right: 20),
             child: TextField(
               controller: searchController,
               decoration: InputDecoration(
                 hintText: 'Buscar gato por nombre...',
                 hintStyle: const TextStyle(
                   color: Colors.grey,
                   fontFamily: 'Stars'
                 ),
                 prefixIcon: Icon(Icons.search),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                 ),
               ),
             ),
           ),
           const SizedBox(
             height: 20,
           ),

           Expanded(
             child: ListView.builder(
               itemCount: 10,
               itemBuilder: (context, index) {
                 return const Padding(
                   padding: EdgeInsets.only(left: 40 , right: 40),
                   child: Column(
                     children: [
                       CatCard(),
                       SizedBox(
                         height: 10,
                       )
                     ],
                   ),
                 );
               },
             ),
           ),
         ],
      ),
    );
  }
}
