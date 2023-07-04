import 'package:ghar_darpan/res/assets/image_assets.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        ImageAssets.users,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kshitija',
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Text(
                            'kshitija@gmail.com',
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                          Text(
                            '9808735733',
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                          Text(
                            'Sunder Nagar  Raipur, Chhattisgarh',
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).divider,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(ImageAssets.myBuilding,height: 25,width: 25,),
                  title: Text(
                    'About Plot',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(

                  leading: Image.asset(ImageAssets.addon,height: 25,width: 25,),
                  title: Text(
                    'My Top-up',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(ImageAssets.facilities,height: 25,width: 25,),
                  title: Text(
                    'My Facilities',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(ImageAssets.agreement,height: 25,width: 25,),
                  title: Text(
                    'My Agreement',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(ImageAssets.attachment,height: 25,width: 25,),
                  title: Text(
                    'My Attachments',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(ImageAssets.workProgress,height: 25,width: 25,),
                  title: Text(
                    'My Work Process',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(ImageAssets.plotGallery,height: 25,width: 25,),
                  title: Text(
                    'My Plot Gallery',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).shadowColour,
                      offset: const Offset(0.0, 2.0),
                    )
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(ImageAssets.notification,height: 25,width: 25,),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Notification',
                        style: FlutterFlowTheme.of(context).headlineMedium,
                      ),
                            Container(
                              height:30,
                              width: 30,
                              margin: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                color: FlutterFlowTheme.of(context).badgePrimary,
                              ),
                              child: Center(
                                  child: Text("25",
                                  style:FlutterFlowTheme.of(context).bodyMedium)))
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: FlutterFlowTheme.of(context).iconSecondary,
                    size: 20.0,
                  ),
                  tileColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
            ),
/*========================End ListTile=================================*/
/*========================Start Bottom=================================*/
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: FlutterFlowTheme.of(context).shadowColour,
                            offset: const Offset(0.0, 2.0),
                          )
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset(ImageAssets.logout,height: 25,width: 25,),
                        title: Text(
                          'Log Out',
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: FlutterFlowTheme.of(context).iconSecondary,
                          size: 20.0,
                        ),
                        tileColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                        dense: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.98,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).buttonPrimary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: FlutterFlowTheme.of(context).shadowColour,
                              offset: const Offset(5.0, 4.0),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Having Some Trouble?',
                                    style: FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                      FlutterFlowTheme.of(context).badgePrimary,
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 10.0, 20.0, 10.0),
                                        child: Text(
                                          'Contact Us',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
/*========================End Bottom=================================*/
          ],
        ),
      ),
    );
  }
}
