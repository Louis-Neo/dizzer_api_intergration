import 'package:flutter/material.dart';

import '../../mbuzzer_ui.dart';

class ArtistsTopList extends StatelessWidget {

  final String artistName;
  final Function()? onTap;

  const ArtistsTopList({
    Key? key,
    required this.artistName,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeightPercentage(context, percentage: 0.15),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index){
            if(index != 0){
              return GestureDetector(
                onTap: onTap,
                child: Container(
                  height: screenHeightPercentage(context, percentage: 0.1),
                  width: screenWidthPercentage(context, percentage: 0.35),
                  color: Colors.blueGrey,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 5.0,
                        left: 5.0,
                        child: ViewText.bodyText(artistName),
                      )
                    ],
                  ),
                ),
              );
            }
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                horizontalMediumSpace,
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: screenHeightPercentage(context, percentage: 0.1),
                    width: screenWidthPercentage(context, percentage: 0.35),
                    color: Colors.blueGrey,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 5.0,
                          left: 5.0,
                          child: ViewText.bodyText(artistName),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
      ),
    );
  }
}
