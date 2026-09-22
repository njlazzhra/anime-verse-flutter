import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/genre_list.dart';
import '../widgets/anime_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'AnimeVerse',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search anime...',
                  hintStyle: const TextStyle(
                    color: Colors.white70,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            // Genre List
            const GenreList(),

            SizedBox(
              height: screenHeight * 0.03,
            ),

            // Anime List
            const AnimeView(),

            SizedBox(
              height: screenHeight * 0.025,
            ),
          ],
        ),
      ),
    );
  }
}