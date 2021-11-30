import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';
import 'package:stacked/stacked.dart';

import 'album_view_model.dart';

class AlbumView extends StatelessWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AlbumViewModel>.reactive(
      viewModelBuilder: () => AlbumViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: ViewText.headingTwo("Explore page"),
        ),
      ),
    );
  }
}
