import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potter_hub/features/detail/presentation/character_detail_controller.dart';

class CharacterDetailScreen extends StatefulWidget {
  final CharacterDetailController controller;

  CharacterDetailScreen({super.key}) : controller = Get.find<CharacterDetailController>();

  @override
  State<CharacterDetailScreen> createState() => _CharacterProfileState();
}

class _CharacterProfileState extends State<CharacterDetailScreen> {
  late final CharacterDetailController controller = widget.controller;
  late final String characterId;
  @override
  void initState() {
    super.initState();
    characterId = Get.parameters['id']!;
    controller.fetchCharacter(characterId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.character?.name ?? 'Character Profile'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (widget.controller.character != null) {
          return CharacterProfile(controller: controller);
        } else if (widget.controller.characterResult.value.isError) {
          return Center(
            child: Column(
              children: [
                Text(widget.controller.characterResult.value.message ?? 'Error'),
                ElevatedButton(
                  onPressed: () {
                    controller.fetchCharacter(characterId);
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}

class CharacterProfile extends StatelessWidget {
  const CharacterProfile({
    super.key,
    required this.controller,
  });

  final CharacterDetailController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Hero(
              tag: 'character-image',
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4), // Shadow direction
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Match border radius
                  child: Image.network(
                    controller.character!.image,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            ,
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.character!.name,
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Alternate Names: ${
                            controller.character!.alternateNames.isEmpty ? "None" :
                            controller.character!.alternateNames.join(", ")
                        }",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Information",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text("Species: ${controller.character!.species}"),
                      Text("Gender: ${controller.character!.gender}"),
                      Text("House: ${controller.character!.house}"),
                      Text("Date of Birth: ${controller.character!.dateOfBirth}"),
                      Text("Ancestry: ${controller.character!.ancestry}"),
                      Text("Eye Colour: ${controller.character!.eyeColour}"),
                      Text("Hair Colour: ${controller.character!.hairColour}"),
                      controller.character!.wand != null ?
                      Text(
                          "Wand: ${controller.character!.wand!.wood} "
                              "(Core: ${controller.character!.wand!.core}, "
                              "Length: ${controller.character!.wand!.length} inches)"
                      )
                      : Container(),
                      Text("Patronus: ${controller.character!.patronus}"),
                      const SizedBox(height: 8),
                      Text(
                        "Played by: ${controller.character!.actor}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
