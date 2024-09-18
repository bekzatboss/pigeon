import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for pass1 widget.
  FocusNode? pass1FocusNode;
  TextEditingController? pass1TextController;
  String? Function(BuildContext, String?)? pass1TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    pass1FocusNode?.dispose();
    pass1TextController?.dispose();
  }
}
