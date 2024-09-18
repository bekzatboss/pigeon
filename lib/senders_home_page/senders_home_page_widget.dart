import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/auth_dialog_sender_widget.dart';
import '/components/tutorial_sender_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'senders_home_page_model.dart';
export 'senders_home_page_model.dart';

class SendersHomePageWidget extends StatefulWidget {
  const SendersHomePageWidget({super.key});

  @override
  State<SendersHomePageWidget> createState() => _SendersHomePageWidgetState();
}

class _SendersHomePageWidgetState extends State<SendersHomePageWidget> {
  late SendersHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SendersHomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SenderSendPackageRecord>>(
      stream: querySenderSendPackageRecord(
        queryBuilder: (senderSendPackageRecord) =>
            senderSendPackageRecord.where(
          'senderMail',
          isEqualTo: currentUserEmail,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<SenderSendPackageRecord>
            sendersHomePageSenderSendPackageRecordList = snapshot.data!;
        final sendersHomePageSenderSendPackageRecord =
            sendersHomePageSenderSendPackageRecordList.isNotEmpty
                ? sendersHomePageSenderSendPackageRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            drawer: Drawer(
              elevation: 16.0,
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('SenderSendedPacks');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.mark_as_unread_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Мои посылки',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 5.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('personalAccount');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.account_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Мой аккаунт',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/IMG_8292.PNG',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xFF3A4148),
              automaticallyImplyLeading: false,
              leading: Container(
                decoration: const BoxDecoration(),
                child: Visibility(
                  visible: loggedIn,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: Icon(
                      Icons.menu,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
              title: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (loggedIn) {
                      return;
                    }

                    context.pushNamed('LoginPage');
                  },
                  child: Text(
                    loggedIn ? 'Pigeon' : 'Авторизация',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 26.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Lato'),
                        ),
                  ),
                ),
              ),
              actions: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/IMG_8293.PNG',
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 11.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/DALLE_2024-08-17_09.38.27_-_An_image_of_a_woman_giving_a_bag_to_a_man_at_an_airport._Both_the_woman_and_the_man_are_happy,_smiling_at_each_other._The_background_shows_elements_of.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 200.0,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Builder(
                              builder: (context) =>
                                  StreamBuilder<List<TutorialSenderRecord>>(
                                stream: queryTutorialSenderRecord(
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<TutorialSenderRecord>
                                      containerTutorialSenderRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final containerTutorialSenderRecord =
                                      containerTutorialSenderRecordList
                                              .isNotEmpty
                                          ? containerTutorialSenderRecordList
                                              .first
                                          : null;

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        barrierColor: const Color(0x6C000000),
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child: TutorialSenderWidget(
                                                url:
                                                    containerTutorialSenderRecord!
                                                        .senderTutorialPic,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Color(0x74000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Как пользоваться\nприложением?',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<PorterTakePackageRecord>>(
                        stream: queryPorterTakePackageRecord(
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<PorterTakePackageRecord>
                              listViewPorterTakePackageRecordList =
                              snapshot.data!;
                          final listViewPorterTakePackageRecord =
                              listViewPorterTakePackageRecordList.isNotEmpty
                                  ? listViewPorterTakePackageRecordList.first
                                  : null;

                          return ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 22.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 3.0, 22.0, 3.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.shopping_bag_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 25.0,
                                              ),
                                              Expanded(
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .senderPackValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: const [
                                                    'Документ (3 000 тенге)',
                                                    'Небольшая посылка до 1 кг (5 000 тг)',
                                                    'Посылка до 3 кг (7 000 тг)',
                                                    'Багаж до 20 кг (11 000 тг)'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .senderPackValue =
                                                          val),
                                                  width: double.infinity,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily),
                                                      ),
                                                  hintText:
                                                      'Что хотите передать?',
                                                  icon: Icon(
                                                    Icons.arrow_drop_down_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    size: 15.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0x00E0E3E7),
                                                  borderWidth: 0.0,
                                                  borderRadius: 0.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          22.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 11.0, 20.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 40.0,
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 1.0, 0.0, 1.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.flight_takeoff,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          size: 25.0,
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child:
                                                            FlutterFlowDropDown<
                                                                String>(
                                                          controller: _model
                                                                  .senderFromValueController ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          options: const [
                                                            'из Астана\tNQZ',
                                                            'из Алматы\tALA',
                                                            'из Актау\tSCO',
                                                            'из Актобе\tAKX',
                                                            'из Атырау\tGUW',
                                                            'из Жезказган\tDZN',
                                                            'из Караганды\tKGF',
                                                            'из Кызылорда\tKZO',
                                                            'из Кокшетау\tKOV',
                                                            'из Костанай\tKSN',
                                                            'из Павлодар\tPWQ',
                                                            'из Петропавловск\tPPK',
                                                            'из Семей\tPLX',
                                                            'из Талдыкорган\tTDK',
                                                            'из Тараз\tDMB',
                                                            'из ральск\tURA',
                                                            'из Оскемен\tUKK',
                                                            'из Шымкент\tCIT'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.senderFromValue =
                                                                      val),
                                                          width: 260.0,
                                                          height:
                                                              double.infinity,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelMediumFamily),
                                                                  ),
                                                          hintText: 'Откуда?',
                                                          icon: Icon(
                                                            Icons
                                                                .arrow_drop_down_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            size: 15.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor:
                                                              const Color(0x00010203),
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      4.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 60.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.8,
                                                  height: 0.5,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0xFF3A4148),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 40.0,
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 1.0, 0.0, 1.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.flight_land,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          size: 25.0,
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child:
                                                            FlutterFlowDropDown<
                                                                String>(
                                                          controller: _model
                                                                  .senderToValueController ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          options: const [
                                                            'в Астана\tNQZ',
                                                            'в Алматы\tALA',
                                                            'в Актау\tSCO',
                                                            'в Актобе\tAKX',
                                                            'в Атырау\tGUW',
                                                            'в Жезказган\tDZN',
                                                            'в Караганды\tKGF',
                                                            'в Кызылорда\tKZO',
                                                            'в Кокшетау\tKOV',
                                                            'в Костанай\tKSN',
                                                            'в Павлодар\tPWQ',
                                                            'в Петропавловск\tPPK',
                                                            'в Семей\tPLX',
                                                            'в Талдыкорган\tTDK',
                                                            'в Тараз\tDMB',
                                                            'в Уральск\tURA',
                                                            'в Оскемен\tUKK',
                                                            'в Шымкент\tCIT'
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.senderToValue =
                                                                      val),
                                                          width: 260.0,
                                                          height:
                                                              double.infinity,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelMediumFamily),
                                                                  ),
                                                          hintText: 'Куда?',
                                                          icon: Icon(
                                                            Icons
                                                                .arrow_drop_down_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            size: 15.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor:
                                                              const Color(0x00E0E3E7),
                                                          borderWidth: 2.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      4.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 60.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) => Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 14.0, 20.0, 0.0),
                                        child: StreamBuilder<List<UsersRecord>>(
                                          stream: queryUsersRecord(
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<UsersRecord>
                                                buttonUsersRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final buttonUsersRecord =
                                                buttonUsersRecordList.isNotEmpty
                                                    ? buttonUsersRecordList
                                                        .first
                                                    : null;

                                            return FFButtonWidget(
                                              onPressed: () async {
                                                if (loggedIn) {
                                                  if ((_model.senderFromValue !=
                                                              null &&
                                                          _model.senderFromValue !=
                                                              '') &&
                                                      (_model.senderToValue !=
                                                              null &&
                                                          _model.senderToValue !=
                                                              '') &&
                                                      (_model.senderPackValue !=
                                                              null &&
                                                          _model.senderPackValue !=
                                                              '')) {
                                                    if ((sendersHomePageSenderSendPackageRecord?.senderChooseDeparture != null && sendersHomePageSenderSendPackageRecord?.senderChooseDeparture != '') &&
                                                        (sendersHomePageSenderSendPackageRecord
                                                                    ?.senderChooseArrive !=
                                                                null &&
                                                            sendersHomePageSenderSendPackageRecord
                                                                    ?.senderChooseArrive !=
                                                                '') &&
                                                        (sendersHomePageSenderSendPackageRecord
                                                                    ?.senderChoosePack !=
                                                                null &&
                                                            sendersHomePageSenderSendPackageRecord
                                                                    ?.senderChoosePack !=
                                                                '')) {
                                                      await AllPacksOfAllSendersRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createAllPacksOfAllSendersRecordData(
                                                            senderChooseDeparture:
                                                                sendersHomePageSenderSendPackageRecord
                                                                    ?.senderChooseDeparture,
                                                            senderChooseArrive:
                                                                sendersHomePageSenderSendPackageRecord
                                                                    ?.senderChooseArrive,
                                                            senderChoosePack:
                                                                sendersHomePageSenderSendPackageRecord
                                                                    ?.senderChoosePack,
                                                            senderPhoneNumber:
                                                                sendersHomePageSenderSendPackageRecord
                                                                    ?.senderPhoneNumber,
                                                            senderSendCreateTime:
                                                                sendersHomePageSenderSendPackageRecord
                                                                    ?.senderSendCreateTime,
                                                            mailFromAllPacks:
                                                                currentUserEmail,
                                                          ));
                                                    } else {
                                                      await SenderSendPackageRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createSenderSendPackageRecordData(
                                                            senderChooseArrive:
                                                                _model
                                                                    .senderToValue,
                                                            senderChooseDeparture:
                                                                _model
                                                                    .senderFromValue,
                                                            senderSendCreateTime:
                                                                getCurrentTimestamp,
                                                            senderPhoneNumber:
                                                                currentPhoneNumber,
                                                            senderChoosePack: _model
                                                                .senderPackValue,
                                                            senderMail:
                                                                currentUserEmail,
                                                          ));
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Отлично!'),
                                                            content: const Text(
                                                                'Ждите звонка от перевозчика'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      if ((listViewPorterTakePackageRecord
                                                                  ?.porterChooseDeparture ==
                                                              sendersHomePageSenderSendPackageRecord
                                                                  ?.senderChooseDeparture) &&
                                                          (listViewPorterTakePackageRecord
                                                                  ?.porterChooseArrive ==
                                                              sendersHomePageSenderSendPackageRecord
                                                                  ?.senderChooseArrive)) {
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              'Новая заявка!',
                                                          notificationText:
                                                              'Успейте забрать!',
                                                          notificationSound:
                                                              'default',
                                                          userRefs: [
                                                            buttonUsersRecord!
                                                                .reference
                                                          ],
                                                          initialPageName:
                                                              'ListOfPackages',
                                                          parameterData: {},
                                                        );
                                                      } else {
                                                        return;
                                                      }

                                                      return;
                                                    }

                                                    await sendersHomePageSenderSendPackageRecord!
                                                        .reference
                                                        .delete();

                                                    await SenderSendPackageRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createSenderSendPackageRecordData(
                                                          senderChooseArrive:
                                                              _model
                                                                  .senderToValue,
                                                          senderChooseDeparture:
                                                              _model
                                                                  .senderFromValue,
                                                          senderSendCreateTime:
                                                              getCurrentTimestamp,
                                                          senderChoosePack: _model
                                                              .senderPackValue,
                                                          senderMail:
                                                              currentUserEmail,
                                                          senderPhoneNumber:
                                                              currentPhoneNumber,
                                                        ));
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          content: const Text(
                                                              'Заполните все строки'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: const Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    return;
                                                  }

                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title:
                                                            const Text('Отлично! '),
                                                        content: const Text(
                                                            'Ждите звонка от перевозчика'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: const Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  if ((listViewPorterTakePackageRecord
                                                              ?.porterChooseDeparture ==
                                                          sendersHomePageSenderSendPackageRecord
                                                              .senderChooseDeparture) &&
                                                      (listViewPorterTakePackageRecord
                                                              ?.porterChooseArrive ==
                                                          sendersHomePageSenderSendPackageRecord
                                                              .senderChooseArrive)) {
                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          'Новая заявка!',
                                                      notificationText:
                                                          'Успейте забрать!',
                                                      notificationSound:
                                                          'default',
                                                      userRefs: [
                                                        buttonUsersRecord!
                                                            .reference
                                                      ],
                                                      initialPageName:
                                                          'ListOfPackages',
                                                      parameterData: {},
                                                    );
                                                  } else {
                                                    return;
                                                  }

                                                  return;
                                                } else {
                                                  await showDialog(
                                                    barrierColor:
                                                        const Color(0xD9000000),
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus(),
                                                          child: SizedBox(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.8,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.8,
                                                            child:
                                                                const AuthDialogSenderWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  return;
                                                }
                                              },
                                              text: 'Передать посылку',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: (_model
                                                                    .senderPackValue !=
                                                                null &&
                                                            _model.senderPackValue !=
                                                                '') &&
                                                        (_model.senderFromValue !=
                                                                null &&
                                                            _model.senderFromValue !=
                                                                '') &&
                                                        (_model.senderToValue !=
                                                                null &&
                                                            _model.senderToValue !=
                                                                '')
                                                    ? const Color(0xFF3A4148)
                                                    : const Color(0xFF848484),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                elevation: 11.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(3.0),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
