import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyAppMainScreen(),
    );
  }
}

class MyAppMainScreen extends StatefulWidget {
  const MyAppMainScreen({super.key});

  @override
  State<MyAppMainScreen> createState() => _MyAppMainScreenState();
}

class _MyAppMainScreenState extends State<MyAppMainScreen> {
  int number1 = 0;
  int number2 = 0;

  int add = 0;
  int m = 0;
  int sub = 0;

  String numberType = 'Odd';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const RotatedBox(quarterTurns: 2, child: Text('Hello World!')),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 100,
                  maxHeight: 200,
                ),
                color: Colors.redAccent,
                decoration: const BoxDecoration(color: Colors.redAccent),
                child: const Text('eiufhweiufhdfuwhsfugweufswfsg'),
              ),
              const SizedBox(
                width: 300,
                child: ListTile(
                  title: Text('Tarongo'),
                  subtitle: Text('Tahmid Tarongo'),
                  leading: Icon(Icons.access_alarms_rounded),
                  trailing: Icon(Icons.ac_unit),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.network('https://jpeg.org/images/jpeg-home.jpg', height: 300, width: 300, fit: BoxFit.fill),
              )
            ],
          ),
        ),

        // body: Column(children: [
        //   Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: TextFormField(
        //       onChanged: (value) {
        //         number1 = int.parse(value);
        //       },
        //       decoration: const InputDecoration(hintText: 'Enter number 1'),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: TextFormField(
        //       onChanged: (value) {
        //         number2 = int.parse(value);
        //       },
        //       decoration: const InputDecoration(hintText: 'Enter number 2'),
        //     ),
        //   ),
        //   ElevatedButton(
        //       onPressed: () {
        //
        //         setState(() {
        //           sub = number1-number2;
        //           add= number1+number2;
        //           m = number1*number2;
        //
        //           if(number1 %2 == 0){
        //             numberType = 'Even';
        //
        //           }else{
        //             numberType = "Odd";
        //           }
        //         });
        //       },
        //       child: const Text('Calculate')),
        //   Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
        //       color: Colors.lightGreenAccent,
        //     ),
        //     padding: EdgeInsets.all(10),
        //     child: Column(
        //       children: [
        //         Text('Add = ${sub}'),
        //         Text('Sub = ${add}'),
        //         Text('Malti = ${m}'),
        //         Text('First number is $numberType'),
        //       ],
        //     ),
        //   )
        // ]),
      ),
    );
  }
}
