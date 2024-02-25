import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget{
  static const routeName = '/home-screen';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Planery Exclusive',style: GoogleFonts.montserrat(),)),
      body: Center(
        child: Text('No Task added yet!')),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.black, 
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(10.0),
              height: 300,
              color:const Color.fromARGB(255, 233, 186, 169),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Add your plan',style: GoogleFonts.montserrat(
                       color: Colors.black,
                       fontSize: 20,
                      ),
                   ),
                   GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.close),)
                ]),
                Divider(thickness: 1.5,color: Colors.black),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Enter your activity',
                  hintStyle: GoogleFonts.montserrat()
                ),
              ),
              SizedBox(height:5.0),
              Row(
                children: [
                  ElevatedButton(
                  onPressed: () {print('add pressed');},
                  child: Text('Add',style: GoogleFonts.montserrat(),
                ),),
                  ElevatedButton(
                  onPressed: () {print('clear pressed');},
                  child: Text('clear',style: GoogleFonts.montserrat(),
                ),)
            ],)
            ]
          ),
        )
      ),
    ),
 );
}
}