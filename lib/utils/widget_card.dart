import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String name;

  final Function? onUpdate;
  final Function? onDelete;

  ItemCard(this.name, {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color.fromARGB(255, 255, 255, 255))),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        // Positioned(
        //   top: 50,
        //   width: MediaQuery.of(context).size.width / 2.5,
        //   child: Center(
        //     child: Image.asset(
        //       file,
        //       alignment: Alignment.center,
        //     ),
        //   ),
        // ),
        Center(
          child: Text(
            name,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 14,
              letterSpacing: 1.5,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              height: 40,
              width: 60,
              child: ElevatedButton(
                  child: Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.green[900],
                  ),
                  onPressed: () {
                    if (onUpdate != null) onUpdate!();
                  }),
            ),
            SizedBox(
              height: 40,
              width: 60,
              child: ElevatedButton(
                  child: Text(
                    "Hapus",
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.red[900],
                  ),
                  onPressed: () {
                    if (onDelete != null) onDelete!();
                  }),
            )
          ],
        )
      ]),
    );
  }
}
