import 'package:flutter/material.dart';
import 'package:mbuzzer_ui/mbuzzer_ui.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewInputField(
      controller: TextEditingController(),
      trailing: const Icon(Icons.search_outlined, color: kcPrimaryColour),
      placeholder: "Search Artists"
    );
  }
}
