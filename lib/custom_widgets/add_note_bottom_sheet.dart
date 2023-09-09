import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.maxFinite,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff53DCC9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
