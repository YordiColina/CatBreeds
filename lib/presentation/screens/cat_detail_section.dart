import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/models/cat_data_model.dart';

class CatDetailSection extends StatelessWidget {
  final CatData? catData;
  const CatDetailSection({super.key, this.catData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: catData?.weight.imperial != null ,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Imperial weight : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.weight.imperial}",
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
        ),

        Visibility(
          visible: catData?.weight.metric  != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Metric weight : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.weight.metric}",
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
        ),

        Visibility(
          visible: catData?.name != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Name : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.name}",
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
        ),

         Visibility(
           visible: catData?.cfaUrl != null,
           child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Cfa_url : ",
                  style: TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: SizedBox(
                  width: 250,
                  child: Text(
                    "${catData?.cfaUrl}",
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

       Visibility(
         visible: catData?.vetstreetUrl != null,
         child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Vetstreet url : ",
                  style: TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child:  GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(catData?.vetstreetUrl ?? ""));
                  },
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      "${catData?.vetstreetUrl}",
                      style: const TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: null,
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.black54),
            ],
          ),
       ),
       Visibility(
         visible: catData?.vcahospitalsUrl != null,
         child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Vcahospitals_url : ",
                  style: TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child:GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(catData?.vetstreetUrl ?? ""));
                  },
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      "${catData?.vcahospitalsUrl}",
                      style: const TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: null,
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.black54),
            ],
          ),
       ),
        Visibility(
          visible: catData?.temperament != null,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Temperament: ",
                  style: TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: SizedBox(
                  width: 250,
                  child: Text(
                    "${catData?.temperament}",
                    style: const TextStyle(
                      fontFamily: 'Stars',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.black54),
            ],
          ),
        ),
        Visibility(
          visible: catData?.origin != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Origin : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.origin}",
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
        ),
        Visibility(
          visible: catData?.countryCode != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Country Code : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.countryCode}",
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
        ),
        Visibility(
          visible: catData?.description != null,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Description: ",
                  style: TextStyle(
                    fontFamily: 'Stars',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: SizedBox(
                  width: 250,
                  child: Text(
                    "${catData?.description}",
                    style: const TextStyle(
                      fontFamily: 'Stars',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.black54),
            ],
          ),
        ),
        Visibility(
          visible: catData?.lifeSpan != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Life span : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.lifeSpan}",
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
        ),
        Visibility(
          visible: catData?.indoor != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Indoor: ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.indoor}",
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
        ),
        Visibility(
          visible: catData?.lap != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "lap : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.lap}",
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
        ),
        Visibility(
          visible: catData?.altNames != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "alt_names : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      catData?.altNames ?? "--" ,
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
        ),
        Visibility(
          visible: catData?.adaptability != null,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "adaptability : ",
                      style: TextStyle(
                        fontFamily: 'Stars',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "${catData?.adaptability}",
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
        ),
      ],
    );
  }
}
