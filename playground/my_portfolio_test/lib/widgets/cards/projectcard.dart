import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  String title, year, image, description;
  ProjectCard({
    super.key,
    required this.title,
    required this.year,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          width: 400,
          height: 270,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        year,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
