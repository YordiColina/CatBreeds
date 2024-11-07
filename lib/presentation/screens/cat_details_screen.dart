import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/models/cat_data_model.dart';


class CatDetailsScreen extends StatefulWidget {
  final CatData? catData;

  const CatDetailsScreen({super.key, this.catData});

  @override
  State<CatDetailsScreen> createState() => _CatDetailsScreenState();
}

class _CatDetailsScreenState extends State<CatDetailsScreen> {
  String getImageUrl(String? referenceImageId) {
    return referenceImageId != null
        ? 'https://cdn2.thecatapi.com/images/$referenceImageId.png'
        : "https://img.freepik.com/vector-gratis/personaje-dibujos-animados-gatito-ojos-dulces_1308-135596.jpg?";
  }
  late Map<String, dynamic> catMap ;
  List<String> claves = [];
  List<dynamic> values = [];

   @override
  void initState() {
      catMap = widget.catData!.toJson();
      claves = catMap.keys.toList();
      values = catMap.values.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String imageUrl = getImageUrl(widget.catData?.referenceImageId);
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
                    widget.catData?.name ?? "",
                    style: const TextStyle(
                      fontFamily: 'Stars',
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
          )),
      backgroundColor: Colors.lightBlue[50],
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
                            'https://cdn2.thecatapi.com/images/${widget.catData?.referenceImageId}.$format';
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
                color: Colors.white
              ),
              child: ListView.builder(
                       itemCount: catMap.length,
                       itemBuilder: (context, index) {
                         return values[index].toString().length > 20 ? columnCatData(claves[index],values[index])
                             : rowCatData(claves[index], values[index] ?? "");
                       }
    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowCatData(String title , dynamic value) {
   title = title.replaceAll('_', " ");
    return  Visibility(
      visible: value != "" ,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "$title : ",
                  style: const TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: Text( title == "weight" ? "Imperial: ${widget.catData?.weight.imperial}"
                    "\nMetric ${widget.catData?.weight.metric}"
                    : value.toString(),
                  style: const TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const Divider(color: Colors.black54),
        ],
      ),
    );
  }

  Widget columnCatData (String title , dynamic value) {
    title = title.replaceAll('_', " ");
   return Visibility(
      visible: value != null,
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse(value ?? ""));
        },
        child: Column(
          children: [
          Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "$title : ",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, top: 5),
              child: SizedBox(
                width: 250,
                child: Text(
                  value.toString(),
                  style: const TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: null,
                ),
              ),
            ),
            const Divider(color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
