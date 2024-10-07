

import 'package:flutter/material.dart';

typedef SearchFieldCallback = void Function(String value);
class SearchField extends StatelessWidget {
  final SearchFieldCallback onValueChanged;
  const SearchField({super.key, required this.onValueChanged});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onChanged: (value) {
          onValueChanged(value);
        },
        decoration: InputDecoration(
          filled: true,
          hintStyle: const TextStyle(color: Colors.white),
          fillColor: const Color(0xFF979797).withOpacity(0.5),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          hintText: "Search Character",
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
