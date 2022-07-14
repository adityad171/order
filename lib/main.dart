import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _text1 = TextEditingController();
  bool _validate1 = false;

  final _text2 = TextEditingController();
  bool _validate2 = false;

  final _text3 = TextEditingController();
  bool _validate3 = false;

  bool _HhasBeenPressed = false;
  bool _DhasBeenPressed = false;
  bool _MhasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // builder: (context, child) => ResponsiveWrapper.builder(
        //     child,
        //     maxWidth: 1200,
        //     minWidth: 480,
        //     defaultScale: true,
        //     breakpoints: [
        //       ResponsiveBreakpoint.resize(480, name: MOBILE),
        //       ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //       ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        //     ],
        //     background: Container(color: Color(0xFFF5F5F5))),
        // initialRoute: "/",
        home: Scaffold(
          backgroundColor: Color(0xffd6d6d6),
          body: Container(
            padding: EdgeInsets.all(30.0),
            height: 700,
            width: 1000,
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Column(
              children: [

                Expanded(child: Row(
                  children: [
                    Text('OrderID #12543459',)
                  ],
                ),
                ),
                // Expanded(child: Row(
                //   children: [
                //     SizedBox(
                //       height: 10.0,
                //     ),
                //   ],
                // ),),
                Expanded(child: Row(
                  children: [
                    Text('AMOUNT:',
                    )
                  ],
                ),
                ),
                Expanded(child: Row(
                  children: [
                    Text('₹  ',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(
                          width: 500.0,
                          child: Expanded(child: TextFormField(
                            controller: _text1,
                            decoration: InputDecoration(
                                errorText: (_validate1 ? 'Value Can\'t Be Empty' : null),
                                filled: true,
                                enabledBorder:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                fillColor: Color(0xffd6d6d6)),
                            cursorColor: Colors.black,
                          ),
                          ),
                        ),
                  ],
                ),
                ),
                // Expanded(child: Row(
                //   children: [
                //     SizedBox(
                //       height: 10.0,
                //     ),
                //   ],
                // ),),
                Expanded(child: Row(
                  children: [
                    Text('Time to deliver:',),
                    JustTheTooltip(
                        // tailLength: 800.0,
                        preferredDirection: AxisDirection.right,
                        child: Material(
                          color: Colors.white,
                          shape: const CircleBorder(),
                          child: Icon(
                            Icons.info_outline,
                          ),
                        ),
                        content: RichText(
                          textAlign: TextAlign.center,
                    text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  children: <TextSpan>[
                    TextSpan(text: 'Pro Tip!\n',style: const TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
                    TextSpan(text: 'Its always advisable to add some amount of buffer time for completion of the gig\n\n'),
                    TextSpan(text: 'For eg:',style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'if you feel like you can complete the gig in 4 hours, mention 5 hours or so in case of any unavoidable delay from your side'),
                  ],
                ),
    ),
                    )
                  ],
                ),
                ),
                Expanded(child: Row(
                  children: [
                    SizedBox(
                      width: 400.0,
                      child: Expanded(child: TextFormField(
                        controller: _text2,
                        decoration: InputDecoration(
                          errorText: _validate2 ? 'Value Can\'t Be Empty and at least one button must be selected' : null,
                            filled: true,
                            enabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fillColor: Color(0xffd6d6d6)),
                        cursorColor: Colors.black,
                      ),
                      ),
                    ),
                    Expanded(child:
                        SizedBox(
                          width: 5.0,
                        ),
                    ),
                    Expanded(child: ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonHeight: 60,
                      buttonMinWidth: 130,
                      children: [
                        Expanded(
                            child: RaisedButton(
                              child: new Text('Hours'),
                              color: Color(0xffd6d6d6),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: _HhasBeenPressed ? Colors.blue : Color(0xffd6d6d6),
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(10)),
                              textColor: _HhasBeenPressed ? Colors.blue : Colors.black,
                              onPressed: () => {
                                setState(() {
                                  print("HOUR");
                                  _HhasBeenPressed = !_HhasBeenPressed;
                                  if(_HhasBeenPressed==true){
                                    _DhasBeenPressed=false;
                                    _MhasBeenPressed=false;
                                  }
                                })
                              },
                            )
                        ),
                      ],
                    ),
                    ),
                    Expanded(child: ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonHeight: 60,
                      buttonMinWidth: 130,
                      children: [
                        Expanded(
                          child: RaisedButton(
                            child: new Text('Days'),
                            color: Color(0xffd6d6d6),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: _DhasBeenPressed ? Colors.blue : Color(0xffd6d6d6),
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(10)),
                            textColor: _DhasBeenPressed ? Colors.blue : Colors.black,
                            onPressed: () => {
                              setState(() {
                                print("DAYS");
                                _DhasBeenPressed = !_DhasBeenPressed;
                                if(_DhasBeenPressed==true){
                                  _HhasBeenPressed=false;
                                  _MhasBeenPressed=false;
                                }
                              })
                            },
                          )
                        ),
                      ],
                    ),
                    ),
                    Expanded(child: ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonHeight: 60,
                      buttonMinWidth: 130,
                      children: [
                        Expanded(
                            child: RaisedButton(
                              child: new Text('Months'),
                              color: Color(0xffd6d6d6),
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: _MhasBeenPressed ? Colors.blue : Color(0xffd6d6d6),
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(10)),
                              textColor: _MhasBeenPressed ? Colors.blue : Colors.black,
                              onPressed: () => {
                                setState(() {
                                  print("MONTHS");
                                  _MhasBeenPressed = !_MhasBeenPressed;
                                  if(_MhasBeenPressed==true){
                                    _HhasBeenPressed=false;
                                    _DhasBeenPressed=false;
                                  }
                                })
                              },
                            )
                        ),
                      ],
                    ),
                    ),
                    Expanded(child:
                    SizedBox(
                      width: 5.0,
                    ),
                    ),
                  ],
                ),
                ),
                Expanded(child: Row(
                  children: [
                    Text('Deliverables:',),
                    JustTheTooltip(
                      // tailLength: 800.0,
                      preferredDirection: AxisDirection.right,
                      child: Material(
                        color: Colors.white,
                        shape: const CircleBorder(),
                          child: Icon(
                            Icons.info_outline,
                        ),
                      ),
                      content: RichText(
                        textAlign: TextAlign.center,
                    text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  children: <TextSpan>[
                    TextSpan(text: 'What are deliverables?\n',style: const TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
                    TextSpan(text: 'They are the files that you will be sending to the seller as final work\n\n'),
                    TextSpan(text: 'For eg:',style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'image files- .jpeg, .png Design files- .psd, .ai Development files - .rar, .zip, GithubLink- https://www.hithub.com/final_work_files'),
                  ],
                ),
                      ),
                      )
                  ],
                ),
                ),
                Expanded(child: Row(
                  children: [
                    SizedBox(
                      width: 500.0,
                      child: Expanded(child: TextFormField(
                        controller: _text3,
                        decoration: InputDecoration(
                            errorText: _validate3 ? 'Value Can\'t Be Empty' : null,
                            filled: true,
                            enabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fillColor: Color(0xffd6d6d6)),
                        cursorColor: Colors.black,
                      ),
                      ),
                    ),
                  ],
                ),
                ),
                Expanded(child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                  buttonHeight: 60,
                  buttonMinWidth: 500,
                  children: [
                    Expanded(
                      child: FlatButton(
                        color: Color(0xfff47b00),
                        child: Text('Create Order'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        onPressed: () {
                          setState(() {
                            print("CREATE");
                            _text1.text.isEmpty ? _validate1 = true : _validate1 = false;
                            _text2.text.isEmpty||(_MhasBeenPressed==false&&_DhasBeenPressed==false&&_HhasBeenPressed==false) ? _validate2 = true : _validate2 = false;
                            _text3.text.isEmpty ? _validate3 = true : _validate3 = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                ),
              ],
            ),
          ),
        )
    );
  }
}