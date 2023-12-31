import 'package:flutter/material.dart';
import 'package:flutter_map_simtaru/components/custom_safe_area.dart';
import 'package:flutter_map_simtaru/constants/colors.dart';
import 'package:flutter_map_simtaru/pages/berita_page.dart';
import 'package:flutter_map_simtaru/pages/home_page.dart';
import 'package:flutter_map_simtaru/pages/overviewpengajuan_page.dart';
import 'package:flutter_map_simtaru/pages/peta_page.dart';
import 'package:flutter_map_simtaru/pages/profil_page.dart';
import 'package:flutter_map_simtaru/states/providers/index_screen_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// final PersistentTabController _controllerNavbar = PersistentTabController();
final controllerNavbarProvider =
    StateProvider.autoDispose<PersistentTabController>((ref) {
  return PersistentTabController();
});

final hideNavbarProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

// ignore: must_be_immutable
class RootWidget extends ConsumerStatefulWidget {
  const RootWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends ConsumerState<RootWidget> {
  List<Widget> _buildScreen() {
    return [
      const HomePage(),
      const OverviewPengajuanPage(),
      const PetaPage(),
      const BeritaPage(),
      const ProfilPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(currIndex) {
    return [
      PersistentBottomNavBarItem(
        icon: currIndex.index == 0
            ? const Icon(Icons.home)
            : const Icon(Icons.home_outlined),
        title: ("Beranda"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: currIndex.index == 1
            ? const Icon(Icons.note)
            : const Icon(Icons.note_outlined),
        title: ("Pengajuan"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.greyColor,
      ),
      PersistentBottomNavBarItem(
        iconSize: 40,
        icon: currIndex.index == 2
            ? const Icon(
                Icons.public,
                color: AppColors.whiteColor,
              )
            : const Icon(
                Icons.public_outlined,
                color: AppColors.whiteColor,
              ),
        title: (" "),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: currIndex.index == 3
            ? const Icon(Icons.newspaper)
            : const Icon(Icons.newspaper_outlined),
        title: ("Berita"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: currIndex.index == 4
            ? const Icon(Icons.person)
            : const Icon(Icons.person_outline),
        title: ("Profil"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.greyColor,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var currIndex = ref.watch(indexScreenProvider);
    var controllerNavbar = ref.watch(controllerNavbarProvider);
    var hideNavbar = ref.watch(hideNavbarProvider);

    return CustomSafeArea(
      child: Scaffold(
        body: PersistentTabView(
          context,
          onItemSelected: (value) {
            ref.read(indexScreenProvider.notifier).onIndexChange(value);
          },
          hideNavigationBar: hideNavbar,
          controller: controllerNavbar,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: AppColors.bgColor,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style15,
          items: _navBarsItems(currIndex),
          screens: _buildScreen(),
        ),
      ),
    );
  }
}
