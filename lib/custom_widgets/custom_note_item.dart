import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/views/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              //contentPadding: const EdgeInsets.all(25.0),
              trailing: SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Flutter tips",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                "Build your carear with ayhm alakel",
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 24, top: 16),
              alignment: Alignment.centerRight,
              child: Text(
                DateFormat.yMMMMd('en_US').format(DateTime.now()),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
