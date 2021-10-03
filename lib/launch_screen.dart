import 'package:flutter/material.dart';
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:4),(){
      Navigator.pushReplacementNamed(context,'/azkar_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.teal.shade100,
              Colors.teal.shade700,
            ],
          ),
        ),
        child:  const Text(
          'مَسبحــــة الأذكَــــار',
          style: TextStyle(
            color: Colors.black,
              fontSize: 39,
              fontWeight: FontWeight.w900,
              fontFamily: 'Mirza'
          ),
        ),
      ),
      );

  }
}
