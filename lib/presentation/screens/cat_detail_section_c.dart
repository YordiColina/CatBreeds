import 'package:flutter/material.dart';

import '../../data/models/cat_data_model.dart';

class CatDetailSectionC extends StatelessWidget {
  final CatData? catData;
  const CatDetailSectionC({super.key, this.catData});

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
                "Rex: ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.rex}",
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
                "Suppressed tail : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.suppressedTail}",
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
                "short_legs : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.shortLegs}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Wikipedia url : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.wikipediaUrl}",
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
                "Hypoallergenic : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.hypoallergenic}",
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
                "Cat friendly : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.catFriendly}",
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
                "Bidability : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.bidability}",
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
                "Id : ",
                style: TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 5),
              child: Text(
                "${catData?.id}",
                style: const TextStyle(
                  fontFamily: 'Stars',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )

      ],
    );
  }
}
