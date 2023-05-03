import '/components/p_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WritingHomeModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool select = true;

  String? difficultySelect = 'Default';

  ///  State fields for stateful widgets in this page.

  // Model for Easy.
  late PCardModel easyModel;
  // Model for Med.
  late PCardModel medModel;
  // Model for Hard.
  late PCardModel hardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    easyModel = createModel(context, () => PCardModel());
    medModel = createModel(context, () => PCardModel());
    hardModel = createModel(context, () => PCardModel());
  }

  void dispose() {
    easyModel.dispose();
    medModel.dispose();
    hardModel.dispose();
  }

  /// Additional helper methods are added here.

}
