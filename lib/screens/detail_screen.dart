import 'package:flutter/material.dart';
import 'package:anime_verse/widgets/app_scaffold.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  final String title;
  final String imagePath;
  final String genre;
  final String rating;
  final String totalEpisodes;
  final String description;

  const DetailScreen({
    super.key,
    this.id = '1',
    this.title = 'Black Clover',
    this.imagePath = 'assets/images/black_clover.jpg',
    this.genre = 'Action, Adventure, Fantasy',
    this.rating = '8.14',
    this.totalEpisodes = '170',
    this.description =
    'Asta and Yuno were abandoned at the same church on the same day.',
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      body: CustomScrollView(
        slivers: [
          // Header section
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: screenHeight * 0.3,
            backgroundColor: Colors.transparent,
            elevation: 0,

            leading: Container(
              margin: EdgeInsets.all(screenWidth * 0.02),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.5),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),

            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Content section
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.02),

                  Text(
                    'Genre: $genre',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.01),

                  Text(
                    'Rating: $rating',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.01),

                  Text(
                    'Episodes: $totalEpisodes',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.03),

                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.04),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}