import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/writing/writing_quiz_comp/writing_quiz_comp_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WritingQuizEModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for First.
  late WritingQuizCompModel firstModel;
  // Model for Second.
  late WritingQuizCompModel secondModel;
  // Model for Third.
  late WritingQuizCompModel thirdModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstModel = createModel(context, () => WritingQuizCompModel());
    secondModel = createModel(context, () => WritingQuizCompModel());
    thirdModel = createModel(context, () => WritingQuizCompModel());
  }

  void dispose() {
    firstModel.dispose();
    secondModel.dispose();
    thirdModel.dispose();
  }

  /// Additional helper methods are added here.

}
