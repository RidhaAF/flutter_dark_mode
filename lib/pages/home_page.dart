import 'package:flutter/material.dart';
import 'package:flutter_dark_mode/provider/dark_theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      backgroundColor: themeChange.darkTheme
          ? const Color(0xFF1D1D1D)
          : const Color(0xFFFAFAFA),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: GoogleFonts.questrial(
                        color: themeChange.darkTheme
                            ? Colors.white38
                            : Colors.black38,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Giovanny',
                      style: GoogleFonts.questrial(
                        color:
                            themeChange.darkTheme ? Colors.white : Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: themeChange.darkTheme
                      ? Icon(
                          Icons.sunny,
                          size: 32,
                          color: themeChange.darkTheme
                              ? Colors.white
                              : Colors.black,
                        )
                      : Icon(
                          Icons.dark_mode_outlined,
                          size: 32,
                          color: themeChange.darkTheme
                              ? Colors.white
                              : Colors.black,
                        ),
                  onPressed: () {
                    themeChange.darkTheme = !themeChange.darkTheme;
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: themeChange.darkTheme
                    ? const Color(0xFF222222)
                    : Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: GoogleFonts.questrial(
                    color:
                        themeChange.darkTheme ? Colors.white38 : Colors.black38,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color:
                        themeChange.darkTheme ? Colors.white70 : Colors.black87,
                  ),
                ),
                style: GoogleFonts.questrial(
                  color: themeChange.darkTheme ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'You\'re Invited to join Live Stream with Dr. Navida',
                          style: GoogleFonts.questrial(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '120k People join Live Streaming!',
                        style: GoogleFonts.questrial(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1.0,
              crossAxisSpacing: 12.0,
              padding: const EdgeInsets.all(4),
              shrinkWrap: true,
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: themeChange.darkTheme
                        ? const Color(0xFF222222)
                        : const Color(0xffFEFEFE),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      '💊',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: themeChange.darkTheme
                        ? const Color(0xFF222222)
                        : const Color(0xffFEFEFE),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      '🦠',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: themeChange.darkTheme
                        ? const Color(0xFF222222)
                        : const Color(0xffFEFEFE),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      '❤️',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: themeChange.darkTheme
                        ? const Color(0xFF222222)
                        : const Color(0xffFEFEFE),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '···',
                      style: TextStyle(
                        color:
                            themeChange.darkTheme ? Colors.white : Colors.black,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Our Doctors',
              style: GoogleFonts.questrial(
                color: themeChange.darkTheme ? Colors.white : Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: themeChange.darkTheme
                    ? const Color(0xFF222222)
                    : const Color(0xffFEFEFE),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 16,
                    spreadRadius: 0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Navida Novara',
                        style: GoogleFonts.questrial(
                          color: themeChange.darkTheme
                              ? Colors.white
                              : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Heart Break Specialist',
                        style: GoogleFonts.questrial(
                          color: themeChange.darkTheme
                              ? Colors.white38
                              : Colors.black38,
                        ),
                      ),
                      const Text('⭐️⭐️⭐️⭐️⭐️'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: themeChange.darkTheme
                    ? const Color(0xFF222222)
                    : const Color(0xffFEFEFE),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 16,
                    spreadRadius: 0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Roman Reigns',
                        style: GoogleFonts.questrial(
                          color: themeChange.darkTheme
                              ? Colors.white
                              : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Skincare Specialist',
                        style: GoogleFonts.questrial(
                          color: themeChange.darkTheme
                              ? Colors.white38
                              : Colors.black38,
                        ),
                      ),
                      const Text('⭐️⭐️⭐️⭐️'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: themeChange.darkTheme ? Colors.black12 : Colors.white,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 32,
        fixedColor: Colors.deepPurple.shade900,
        unselectedItemColor:
            themeChange.darkTheme ? Colors.white38 : Colors.black38,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            activeIcon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
