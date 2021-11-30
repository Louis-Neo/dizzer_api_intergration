import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';
import 'package:stacked/stacked.dart';

import 'artist_view_model.dart';

class ArtistView extends StatelessWidget {
  const ArtistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ArtistViewModel>.reactive(
      viewModelBuilder: () => ArtistViewModel(),
      builder: (context, model, child) => Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ViewText.headingTwo("Artist Name"),
                  ViewText.bodyText("Number Of Albums"),
                  ViewText.caption("Number Of fans")
                ],
              ),
            ),
            verticalSmallSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: screenHeightPercentage(context, percentage: 0.25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
            ),
            verticalMediumSpace,
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ViewText.subheading("Top Tracks"),
            ),
            verticalMediumSpace,
            Container(
              height: screenHeightPercentage(context, percentage: 0.09),
              width: screenWidthPercentage(context, percentage: 0.1),
              color: Colors.blueGrey
            ),
            verticalMediumSpace,
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ViewText.subheading("Albums"),
            ),
            verticalMediumSpace
          ]
        ),
      ),
    );
  }
}
