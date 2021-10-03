import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'الحمد لله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'سُبحــــة الأذكــار',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (_content != value) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('الحمــــد للـه'),
                  value: 'الحمــــد للـه',
                ),
                const PopupMenuItem(
                  child: Text('أستغفــــر اللـه'),
                  value: 'أستغفــــر اللـه',
                ),
                const PopupMenuItem(
                  child: Text('سبحــــان اللـه'),
                  value: 'سبحــــان اللـه',
                ),
              ];
            },
          )
        ],
        // automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/sss.jpg'),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(5, 0),
                        blurRadius: 6)
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade800,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: const Text(
                      'تسبيـــح',
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade700,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: const Text(
                      'إعــادة',
                    ),
                  ),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}
