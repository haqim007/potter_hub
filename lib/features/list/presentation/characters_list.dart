
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:potter_hub/features/list/domain/model/character_summary.dart';

import 'characters_controller.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({
    super.key,
    required this.controller,
  });

  final CharactersController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() {
        if (controller.characters.value.data != null) {
          return ListView.builder(
            itemCount: controller.characters.value.data?.length ?? 0,
            itemBuilder: (context, index) {
              final character = controller.characters.value.data![index];
              return CharacterCard(character: character);
            },
          );
        } else if (controller.characters.value.isError) {
          return Text(controller.characters.value.message ?? 'Error');
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
  });

  final CharacterSummary character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding inside the card
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
                  children: [
                    Text(
                      character.name,
                      style: Theme.of(context).textTheme
                          .titleLarge
                          ?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 4.0), // Space between texts
                    Text(
                      character.species,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      character.gender,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      character.house,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16.0), // Space between text and image
              Container(
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  // overflow: BoxFit.cover,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners for the image
                  child: Image.network(
                    character.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/images/broken_image.png',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
