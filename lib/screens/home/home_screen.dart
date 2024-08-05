import 'package:explore_dubai/const/lists.dart';
import 'package:explore_dubai/screens/home/book_now/book_now_screen.dart';
import 'package:explore_dubai/screens/home/explore/explore_screen.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedVal = "Explore";
  final ScrollController _scrollController = ScrollController();

  void _scrollToSelectedItem(int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scrollPosition = (index * 100.0) - (screenWidth / 2) + 50.0;
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Welcome",
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryWhite,
          ),
        ),
        actions: <Widget>[
          Icon(Icons.person, size: 25, color: AppColors.primaryWhite),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: homeScreenList.asMap().entries.map((entry) {
                  int index = entry.key;
                  var e = entry.value;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedVal = e.name;
                        _scrollToSelectedItem(index);
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedVal == e.name ? AppColors.primaryColor : Colors.grey.shade300,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                          child: Text(
                            e.name,
                            style: GoogleFonts.nunito(
                              color: selectedVal == e.name ? AppColors.primaryWhite : AppColors.primaryBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: navigatedScreens(selectedVal),
            ),
          ),
        ],
      ),
    );
  }

  navigatedScreens(String selectedVal) {
    if (selectedVal == 'Explore') {
      return const ExploreScreen();
    }
    if (selectedVal == 'Book Now') {
      return const BookNowScreen();
    }
  }
}
