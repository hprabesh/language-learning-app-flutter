import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangeEmailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NewEmail widget.
  TextEditingController? newEmailController;
  String? Function(BuildContext, String?)? newEmailControllerValidator;
  // State field(s) for ConfirmEmail widget.
  TextEditingController? confirmEmailController;
  String? Function(BuildContext, String?)? confirmEmailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    newEmailController?.dispose();
    confirmEmailController?.dispose();
  }

  /// Additional helper methods are added here.

}
