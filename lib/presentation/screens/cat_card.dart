import 'package:flutter/material.dart';
import 'package:catbreeds/data/models/cat_data_model.dart';

class CatCard extends StatelessWidget {
  final CatData? catData;

  const CatCard({super.key, this.catData});


  String getImageUrl(String? referenceImageId) {

    return referenceImageId != null
        ? 'https://cdn2.thecatapi.com/images/$referenceImageId.png'
        : "https://img.freepik.com/vector-gratis/personaje-dibujos-animados-gatito-ojos-dulces_1308-135596.jpg?";
  }

  @override
  Widget build(BuildContext context) {

    String imageUrl = getImageUrl(catData?.referenceImageId);

    return Stack(
      children: [
        Center(
          child: Container(
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "Raza : ${catData?.name ?? ""}",
                        style: const TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20, top: 5),
                      child: Text(
                        "Más",
                        style: TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    height: 150,
                    width: 160,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        imageUrl,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          List<String> formats = [
                            'jpg',
                            'png',
                            'jpeg',
                            'webp'
                          ];
                          String? imageUrl;

                          for (String format in formats) {
                            imageUrl =
                                'https://cdn2.thecatapi.com/images/${catData?.referenceImageId}.$format';
                            try {
                              return Image.network(
                                imageUrl,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              );
                            } catch (e) {
                              continue;
                            }
                          }
                          return const Icon(Icons
                              .error);
                        },
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "País de\norigen : ${catData?.origin}",
                        style: const TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 5),
                      child: Text(
                        "Inteligencia : ${catData?.intelligence}",
                        style: const TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
