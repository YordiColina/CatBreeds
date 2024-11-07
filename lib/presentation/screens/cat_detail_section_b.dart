import 'package:flutter/material.dart';

import '../../data/models/cat_data_model.dart';

class CatDetailSectionB extends StatelessWidget {
  final CatData? catData;
  const CatDetailSectionB({super.key, this.catData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Affection level : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.affectionLevel}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Child friendly : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.childFriendly}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Dog friendly : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.dogFriendly}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Energy level : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.energyLevel}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Grooming : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.grooming}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Health issues : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.healthIssues}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Intelligence : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.intelligence}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Shedding level: ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.sheddingLevel}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Social_needs : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.socialNeeds}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Stranger friendly : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.strangerFriendly}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Vocalisation : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.vocalisation}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Experimental : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.experimental}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Hairless : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.hairless}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Natural : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.natural}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Rare : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.rare}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}