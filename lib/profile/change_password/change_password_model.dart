import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CurrentPassword widget.
  TextEditingController? currentPasswordController;
  late bool currentPasswordVisibility;
  String? Function(BuildContext, String?)? currentPasswordControllerValidator;
  // State field(s) for NewPassword widget.
  TextEditingController? newPasswordController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordControllerValidator;
  // State field(s) for ConfirmPassword widget.
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    currentPasswordVisibility = false;
    newPasswordVisibility = false;
    confirmPasswordVisibility = false;
  }

  void dispose() {
    currentPasswordController?.dispose();
    newPasswordController?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
