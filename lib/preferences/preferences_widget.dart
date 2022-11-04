import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page1/home_page1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreferencesWidget extends StatefulWidget {
  const PreferencesWidget({Key? key}) : super(key: key);

  @override
  _PreferencesWidgetState createState() => _PreferencesWidgetState();
}

class _PreferencesWidgetState extends State<PreferencesWidget> {
  List<String>? choiceChipsValues1;
  List<String>? choiceChipsValues2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Interests',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '\nChoose your interested topics',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Organizations',
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          FlutterFlowChoiceChips(
            options: [ChipData('IEEE'), ChipData('ISTE'), ChipData('IEDC')],
            onChanged: (val) => setState(() => choiceChipsValues1 = val),
            selectedChipStyle: ChipStyle(
              backgroundColor: Color(0xFF323B45),
              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              iconColor: Colors.white,
              iconSize: 18,
              elevation: 4,
            ),
            unselectedChipStyle: ChipStyle(
              backgroundColor: Colors.white,
              textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF323B45),
                  ),
              iconColor: Color(0xFF323B45),
              iconSize: 18,
              elevation: 4,
            ),
            chipSpacing: 20,
            multiselect: true,
            initialized: choiceChipsValues1 != null,
            alignment: WrapAlignment.start,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Field of Interests',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          FlutterFlowChoiceChips(
            options: [
              ChipData('Security'),
              ChipData('Hacking'),
              ChipData('Development'),
              ChipData('Editing'),
              ChipData('CAD'),
              ChipData('Architecture')
            ],
            onChanged: (val) => setState(() => choiceChipsValues2 = val),
            selectedChipStyle: ChipStyle(
              backgroundColor: Color(0xFF323B45),
              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              iconColor: Colors.white,
              iconSize: 18,
              elevation: 4,
            ),
            unselectedChipStyle: ChipStyle(
              backgroundColor: Colors.white,
              textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF323B45),
                  ),
              iconColor: Color(0xFF323B45),
              iconSize: 18,
              elevation: 4,
            ),
            chipSpacing: 20,
            multiselect: true,
            initialized: choiceChipsValues2 != null,
            alignment: WrapAlignment.start,
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0, 0.8),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage1Widget(),
                    ),
                  );
                },
                text: 'Save Changes',
                options: FFButtonOptions(
                  width: 360,
                  height: 40,
                  color: FlutterFlowTheme.of(context).gray600,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        lineHeight: 1,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
