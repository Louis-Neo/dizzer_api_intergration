import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/src/shared/ui_helpers.dart';

import '../../mbuzzer_ui.dart';

class ArtistBoxThreeInverted extends StatelessWidget {

  final String artistName;
  final String? popularAlbum;
  final String? numberOfFollowers;
  final Function() onTap;

  const ArtistBoxThreeInverted({
    Key? key,
    required this.artistName,
    this.popularAlbum,
    this.numberOfFollowers,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSmallSpace,
                  ViewText.middleSubHeadingText(artistName),
                  verticalSmallSpace,
                  ViewText.bodyText(popularAlbum!),
                  verticalSmallSpace,
                  ViewText.caption(numberOfFollowers!)
                ],
              ),
              horizontalSmallSpace,
              Container(
                height: screenHeightPercentage(context, percentage: 0.15),
                width: screenHeightPercentage(context, percentage: 0.2),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8)
                ),
              )
            ],
          )
      ),
    );
  }
}
