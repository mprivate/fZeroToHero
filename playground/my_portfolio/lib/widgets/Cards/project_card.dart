import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title, description, year, imagePath;
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.year,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 2),
            blurRadius: 15,
            spreadRadius: -7,
          )
        ],
        border: Border.all(
          width: 2.0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('My Project',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    )),
                Container(
                  width: 50,
                  height: 23,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      '2023',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(imagePath),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Some description',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
