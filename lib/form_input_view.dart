import 'package:flutter/material.dart';

class InputDetails extends StatefulWidget {
  InputDetails({Key? key}) : super(key: key);

  @override
  _InputDetailsState createState() => _InputDetailsState();
}

String fullName = 'name';
String mainEmail = 'myemail@gmail.com';
String mainState = 'Lagos';
String mainCountry = 'Nigeria';
String mainOccupation = 'Mobile App Developer';

class _InputDetailsState extends State<InputDetails> {
  final myFullname = TextEditingController();
  final myEmail = TextEditingController();
  final myState = TextEditingController();
  final myCountry = TextEditingController();
  final myOccupation = TextEditingController();

  void showValues() {
    final name = myFullname.text;
    final email = myEmail.text;
    final state = myState.text;
    final country = myCountry.text;
    final occupation = myOccupation.text;
    setState(() {
      Navigator.pushReplacementNamed(context, '/display');
      fullName = name;
      mainEmail = email;
      mainState = state;
      mainCountry = country;
      mainOccupation = occupation;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myFullname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('INPUT DETAILS'),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            child: Container(
              height: 15,
              width: 6,
              child: Icon(Icons.arrow_back, size: 25),
            ),
          ),
        ),
        backgroundColor: Colors.blue[900],
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Full Name',
                        fillColor: Colors.white,
                        focusColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white70),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    controller: myFullname,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Email Address',
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white70),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    controller: myEmail,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'State',
                        fillColor: Colors.white54,
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white70),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    controller: myState,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Country',
                        fillColor: Colors.white54,
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white70),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    controller: myCountry,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Occupation',
                        fillColor: Colors.white54,
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white70),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    controller: myOccupation,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    showValues();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    'DISPLAY INPUT',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}