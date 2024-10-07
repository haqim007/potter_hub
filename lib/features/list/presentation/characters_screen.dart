import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potter_hub/features/list/presentation/characters_controller.dart';
import 'package:potter_hub/features/list/presentation/search_view.dart';

import 'characters_list.dart';

class CharactersScreen extends StatefulWidget {
  final CharactersController controller;

  CharactersScreen({super.key})
      : controller = Get.find<CharactersController>();

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late final CharactersController controller = widget.controller;
  @override
  void initState() {
    super.initState();
    controller.fetchCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/images/harry_potter_logo.png"),
              ),
              SearchField(
                onValueChanged: (value) => controller.search(value),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: CharacterFilter.values.map((CharacterFilter filter) {
                      return FilterChip(
                        label: Text(filter.name),
                        selected: controller.isActiveFilter(filter),
                        onSelected: (bool selected) {
                          setState(() {
                            controller.toggleFilter(filter);
                          });
                        },
                      );
                    }).toList()
                  ),
                )
              ),
              CharactersList(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}



