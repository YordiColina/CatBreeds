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
            height: 240,
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
                        "Name : ${catData?.name ?? ""}",
                        style: const TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14,
                        ),
                      ),
                    ),
                   Padding(
                      padding: const EdgeInsets.only(right: 20, top: 5),
                      child: Text(
                        "Life span ${catData?.lifeSpan ?? ""}",
                        style: const TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    height: 160,
                    width: 190,
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
                                  width: 50,
                                  height: 40,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "Origin : ${catData?.origin}",
                        style: const TextStyle(
                          fontFamily: 'Stars',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 5),
                      child: Text(
                        "Intelligence : ${catData?.intelligence}",
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
