import 'package:flutter/material.dart';

class BottomSheetTestScreen extends StatefulWidget {
  const BottomSheetTestScreen({Key? key}) : super(key: key);
  static const routeName = '/bottom-sheet-test-screen';

  @override
  State<BottomSheetTestScreen> createState() => _BottomSheetTestScreenState();
}

class _BottomSheetTestScreenState extends State<BottomSheetTestScreen> {
  static const totalStep = 3;
  int _step = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test bottom sheet'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 48,
              color: const Color.fromARGB(255, 123, 252, 119),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        if (_step != 0) {
                          setState(() {
                            _step -= 1;
                          });
                        }
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  Column(
                    children: const [],
                  ),
                  IconButton(
                    onPressed: () {
                      if (_step < 3) {
                        setState(() {
                          _step += 1;
                        });
                      }
                    },
                    icon: const Icon(Icons.arrow_forward_rounded),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  _step.toString(),
                  style: const TextStyle(fontSize: 52),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildStepDot() {
    return [
      for (var i = 1; i <= totalStep; i++)
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _step == i ? Colors.white : Colors.grey),
          height: 2,
          width: 2,
        )
    ];
  }
}
