import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darsan/flutter_flow/flutter_flow_theme.dart';
import 'package:ghar_darsan/res/assets/image_assets.dart';
import 'package:ghar_darsan/view/homepage/dashboard_view.dart';
import 'package:ghar_darsan/view/homepage/payment_history_view.dart';
import 'package:ghar_darsan/view/homepage/team_member_view.dart';
import 'package:ghar_darsan/view/homepage/track_progress_view.dart';
import 'package:ghar_darsan/view_models/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.put(HomeController());
  final List<Widget> _widgetOptions = [
    const DashboardView(),
    const PaymentHistoryView(),
    const TrackProgressView(),
    const TeamMemberView(),
  ];


  Future<bool> showExitPopup() async {
    return await showDialog(
      //show confirm dialogue
      //the return value will be from "Yes" or "No" options
      context: context,
      builder: (context) =>
          AlertDialog(
            title: const Text('Exit App'),
            content: const Text('Do you want to exit an App?'),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                child: const Text('No'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                //return true when click on "Yes"
                child: const Text('Yes'),
              ),
            ],
          ),
    ) ??
        false; //if show Dialogue had returned null, then return false
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        body: Center(
          child: Obx(() {
            return _widgetOptions.elementAt(homeController.getSelectedIndex);
          }),
        ),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // Set the type to fixed to display all labels
            selectedItemColor: FlutterFlowTheme
                .of(context)
                .highlightColour,
            // Customize the selected item color
            unselectedItemColor: FlutterFlowTheme
                .of(context)
                .secondaryText,
            // Customize the unselected item color
            selectedLabelStyle: FlutterFlowTheme
                .of(context)
                .labelSmall,
            unselectedLabelStyle: FlutterFlowTheme
                .of(context)
                .labelMedium,
            items: [
              BottomNavigationBarItem(
                  label: "Project",
                  icon: Image.asset(
                    homeController.getSelectedIndex == 0 ? ImageAssets
                        .activeProject : ImageAssets.inactiveProject, width: 25,
                    height: 25,)),
              BottomNavigationBarItem(
                  label: "Payment",
                  icon: Image.asset(
                    homeController.getSelectedIndex == 1 ? ImageAssets
                        .activePayment : ImageAssets.inactivePayment, width: 25,
                    height: 25,)),
              BottomNavigationBarItem(
                  label: "Track Progress",
                  icon: Image.asset(
                    homeController.getSelectedIndex == 2
                        ? ImageAssets.activeTrack
                        : ImageAssets.inactiveTrack, width: 25, height: 25,)),
              BottomNavigationBarItem(
                  label: "Team Member",
                  icon: Image.asset(
                    homeController.getSelectedIndex == 3 ? ImageAssets
                        .activeTeamMember : ImageAssets.inactiveTeamMember,
                    width: 25, height: 25,)),
            ],
            onTap: (value) => homeController.setSelectedIndex(value),
            currentIndex: homeController.getSelectedIndex,

          );
        }),
      ),
    );
  }
}
