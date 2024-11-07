import 'package:catbreeds/presentation/screens/cat_detail_section.dart';
import 'package:flutter/material.dart';
import '../../data/models/cat_data_model.dart';
import 'cat_detail_section_b.dart';
import 'cat_detail_section_c.dart';

class CatDetailsScreen extends StatelessWidget {
  final CatData? catData;

  const CatDetailsScreen({super.key, this.catData});

  String getImageUrl(String? referenceImageId) {
    return referenceImageId != null
        ? 'https://cdn2.thecatapi.com/images/$referenceImageId.png'
        : "https://img.freepik.com/vector-gratis/personaje-dibujos-animados-gatito-ojos-dulces_1308-135596.jpg?";
  }

  @override
  Widget build(BuildContext context) {
    String imageUrl = getImageUrl(catData?.referenceImageId);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 28),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                  ),
                ),
                Center(
                  child: Text(
                    catData?.name ?? "",
                    style: const TextStyle(
                      fontFamily: 'Stars',
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
          )),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 250,
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageUrl,
                    width: 50,
                    height: 40,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Image.asset(
                          'assets/images/gatito.jpg',
                          fit: BoxFit.contain,
                        );
                      }
                    },
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) {
                      List<String> formats = ['jpg', 'png', 'jpeg', 'webp'];
                      String? imageUrl;

                      for (String format in formats) {
                        imageUrl =
                            'https://cdn2.thecatapi.com/images/${catData?.referenceImageId}.$format';
                        try {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              imageUrl,
                              width: 50,
                              height: 40,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                } else {
                                  return Image.asset(
                                    'assets/images/gatito.jpg',
                                    fit: BoxFit.contain,
                                  );
                                }
                              },
                              fit: BoxFit.contain,
                            ),
                          );
                        } catch (e) {
                          continue;
                        }
                      }
                      return const Icon(Icons.error);
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  CatDetailSection(catData: catData),
                  CatDetailSectionB(catData: catData),
                  CatDetailSectionC(catData: catData)
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
