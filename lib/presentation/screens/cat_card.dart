

import 'package:flutter/material.dart';

class CatCard extends StatefulWidget {
  const CatCard({super.key});

  @override
  State<CatCard> createState() => _CatCardState();
}

class _CatCardState extends State<CatCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black)
            ),
            child: Column(
              children: [
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10,top: 5),
                    child: Text("Nombre raza", style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),
                    child: Text("Más", style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14
                    ),),
                  )
                 ],
               ),

                Center(
                  child: Container(
                    height: 140,
                    width: 160,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network('https://cdn2.thecatapi.com/images/xnsqonbjW.jpg',
                            width: 50, height: 50, fit: BoxFit.cover),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,top: 5),
                      child: Text("País de origen",style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20,top: 5),
                      child: Text("Inteligencia",style: TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14
                      ),),
                    )
                  ],
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
