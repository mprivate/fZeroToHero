import 'package:flutter/material.dart';
import 'package:portfolio_basic/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return ProjectContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectHeader(title: project.title, year: project.year),
          const SizedBox(height: 12),
          ProjectImage(imagePath: project.imagePath),
          const SizedBox(height: 8),
          ProjectDescription(description: project.description),
        ],
      ),
    );
  }
}

class ProjectDescription extends StatelessWidget {
  final String description;

  const ProjectDescription({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      maxLines: 3,
      style: const TextStyle(
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class ProjectImage extends StatelessWidget {
  final String imagePath;

  const ProjectImage({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imagePath,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProjectHeader extends StatelessWidget {
  final String title;
  final int year;

  const ProjectHeader({
    super.key,
    required this.title,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                year.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainer extends StatelessWidget {
  final Widget child;
  const ProjectContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        height: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 2),
              color: Colors.black.withOpacity(0.4),
              blurRadius: 5,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
