import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tutorial_sender_model.dart';
export 'tutorial_sender_model.dart';

class TutorialSenderWidget extends StatefulWidget {
  const TutorialSenderWidget({
    super.key,
    required this.url,
  });

  final String? url;

  @override
  State<TutorialSenderWidget> createState() => _TutorialSenderWidgetState();
}

class _TutorialSenderWidgetState extends State<TutorialSenderWidget> {
  late TutorialSenderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TutorialSenderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget.url!,
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: MediaQuery.sizeOf(context).height * 0.8,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.79, -0.84),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            fillColor: FlutterFlowTheme.of(context).primaryBackground,
            icon: Icon(
              Icons.close,
              color: FlutterFlowTheme.of(context).secondary,
              size: 24.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
