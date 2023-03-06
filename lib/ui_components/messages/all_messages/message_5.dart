// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'home_page_model.dart';
// export 'home_page_model.dart';

// class HomePageWidget extends StatefulWidget {
//   const HomePageWidget({Key? key}) : super(key: key);

//   @override
//   _HomePageWidgetState createState() => _HomePageWidgetState();
// }

// class _HomePageWidgetState extends State<HomePageWidget> {
//   late HomePageModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   final _unfocusNode = FocusNode();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => HomePageModel());
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     _unfocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
//           child: Container(
//             width: double.infinity,
//             height: 200,
//             decoration: BoxDecoration(
//               color: FlutterFlowTheme.of(context).primaryText,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: 120,
//                       height: 120,
//                       clipBehavior: Clip.antiAlias,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                       ),
//                       child: Image.network(
//                         'https://picsum.photos/seed/407/600',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
//                               child: Text(
//                                 'Hello world',
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyText1
//                                     .override(
//                                       fontFamily: 'Poppins',
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryBackground,
//                                       fontSize: 20,
//                                     ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           '@username',
//                           style:
//                               FlutterFlowTheme.of(context).bodyText1.override(
//                                     fontFamily: 'Poppins',
//                                     color: FlutterFlowTheme.of(context)
//                                         .secondaryBackground,
//                                     fontWeight: FontWeight.w300,
//                                   ),
//                         ),
//                       ],
//                     ),
//                     Expanded(
//                       child: Align(
//                         alignment: AlignmentDirectional(-0.05, -0.05),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                           child: Text(
//                             '6:32 PM',
//                             style:
//                                 FlutterFlowTheme.of(context).bodyText1.override(
//                                       fontFamily: 'Poppins',
//                                       color: FlutterFlowTheme.of(context)
//                                           .secondaryText,
//                                     ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                       child: Text(
//                         'Long Message',
//                         style: FlutterFlowTheme.of(context).bodyText1.override(
//                               fontFamily: 'Poppins',
//                               color: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                               fontWeight: FontWeight.w300,
//                             ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: FlutterFlowTheme.of(context).secondaryColor,
//                         ),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
//                           child: Text(
//                             '1',
//                             style:
//                                 FlutterFlowTheme.of(context).bodyText1.override(
//                                       fontFamily: 'Poppins',
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryBtnText,
//                                     ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
