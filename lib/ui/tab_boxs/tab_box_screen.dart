import 'package:default_project/ui/tab_boxs/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/colors.dart';
import '../../utils/svges.dart';
import 'calendar/calendar_screen.dart';
import 'focus/focus_screen.dart';
import 'home/home_screen.dart';

class TabBoxScreen extends StatefulWidget {
  const TabBoxScreen({Key? key}) : super(key: key);

  @override
  State<TabBoxScreen> createState() => _TabBoxScreenState();
}

class _TabBoxScreenState extends State<TabBoxScreen> {
  int currentIndex = 0;

  List<Widget> _screens = [];

  @override
  void initState() {
    _screens = [
      const HomeScreen(),
      const CalendarScreen(),
      const FocusScreen(),
      const ProfileScreen(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
          children: [
            _screens[currentIndex],
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: const BoxDecoration(color: AppColors.C_363636),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _getMyBarItem(
                        isActive: currentIndex == 0,
                        icon: AppIcons.homePassive,
                        activeIcon: AppIcons.home,
                        label: "Home",
                        onTap: () {
                          setState(() {
                            currentIndex = 0;
                          });
                        }),
                    _getMyBarItem(
                        isActive: currentIndex == 1,
                        icon: AppIcons.calendarPassive,
                        activeIcon: AppIcons.calendar,
                        label: "Calendar",
                        onTap: () {
                          setState(() {
                            currentIndex = 1;
                          });
                        }),
                    const SizedBox(width: 36),
                    _getMyBarItem(
                        isActive: currentIndex == 2,
                        icon: AppIcons.focusPassive,
                        activeIcon: AppIcons.focus,
                        label: "Focus",
                        onTap: () {
                          setState(() {
                            currentIndex = 2;
                          });
                        }),
                    _getMyBarItem(
                        isActive: currentIndex == 3,
                        icon: AppIcons.profile,
                        activeIcon: AppIcons.profilePassive,
                        label: "Profile",
                        onTap: () {
                          setState(() {
                            currentIndex = 3;
                          });
                        }),
                  ],
                ),
              ),
            ),
            Positioned(
                left: (width - 64) / 2,
                right: (width - 64) / 2,
                bottom: 70,
                child: SizedBox(
                  width: 64,
                  height: 64,
                  child: FloatingActionButton(
                    backgroundColor: AppColors.C_8687E7,
                    onPressed: () {},
                    child: SvgPicture.asset(
                      AppIcons.add,
                    ),
                  ),
                ))
          ],
        ));
  }

  _getMyBarItem({
    required String icon,
    required String activeIcon,
    required String label,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return Column(children: [
      IconButton(
        onPressed: onTap,
        icon: isActive ? SvgPicture.asset(activeIcon) : SvgPicture.asset(icon),
      ),
      // SizedBox(height: 8.h),
      Text(
        label,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
      )
    ]);
  }
}
