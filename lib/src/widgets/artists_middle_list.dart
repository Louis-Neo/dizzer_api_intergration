import 'package:flutter/material.dart';

import '../../mbuzzer_ui.dart';

class ArtistsMiddleList extends StatelessWidget {

  final String artistName;
  final Function()? onTap;

  const ArtistsMiddleList({
    Key? key,
    required this.artistName,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeightPercentage(context, percentage: 0.20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidthPercentage(context, percentage: 0.35),
                height: screenHeightPercentage(context, percentage: 0.15),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8)
                ),
              ),
              verticalMicroSpace,
              ViewText.bodyText(artistName)
            ],
          ),
        ),
      ),
    );
  }
}
