import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mbuzzer/ui/exploreview/explore_view_model.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';
import 'package:stacked/stacked.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExploreViewModel>.reactive(
        onModelReady: (model) => SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
          model.fetchArtists();
        }),
      viewModelBuilder: () => ExploreViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              backgroundColor: Colors.grey[100],
              elevation: 0,
              centerTitle: false,
              automaticallyImplyLeading: false,
              title: ViewText.headlineStyle("Explore"),
              titleTextStyle: const TextStyle(color: Colors.black),
              // ignore: unnecessary_const
              bottom: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.grey[100],
                elevation: 0,
                title: Container(
                  height: 65,
                  padding: const EdgeInsets.all(8.0),
                  child: const SearchBar(),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                verticalMediumSpace,
                ArtistsMiddleList(
                  onTap: model.navigateTo,
                  artistName: "model.artist!",
                ),
                verticalMediumSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ViewText.headingThree("Trending"),
                ),
                verticalMediumSpace,
                SizedBox(
                  height: screenHeightPercentage(context, percentage: 0.15),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index){
                        if(index != 0){
                          return GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: screenHeightPercentage(context, percentage: 0.1),
                              width: screenWidthPercentage(context, percentage: 0.35),
                              color: Colors.blueGrey,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 5.0,
                                    left: 5.0,
                                    child: ViewText.bodyText("Maponesa"),
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
                              onTap: (){},
                              child: Container(
                                height: screenHeightPercentage(context, percentage: 0.1),
                                width: screenWidthPercentage(context, percentage: 0.35),
                                color: Colors.blueGrey,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 5.0,
                                      left: 5.0,
                                      child: ViewText.bodyText("Maponesa"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                  ),
                ),
                verticalMediumSpace,

                // TODO pass in artists objects
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index){
                    if(index % 2 == 0) {
                      return ArtistBoxThree(
                        artistName: "Artist Name",
                        popularAlbum: "Popular Album",
                        numberOfFollowers: "Number Of Followers",
                        onTap: model.navigateTo
                      );
                    }
                    return ArtistBoxThreeInverted(
                        artistName: "Artist Name",
                        popularAlbum: "Popular Album",
                        numberOfFollowers: "Number Of Followers",
                        onTap: model.navigateTo
                    );
                  },
                )
              ]),
            )
          ]
        )
      )
    );
  }
}
