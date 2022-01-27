import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:profile_page/dataModel.dart';
import 'dart:convert';
import 'widget.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 List<Details> detail = [];

 fetchAlbum() async {
  var response = await http
      .get(Uri.parse('https://randomuser.me/api/'));

      Map<String,dynamic> jsonData = jsonDecode(response.body);
      
       jsonData['results'].forEach((element){

        Details details = new Details();

         details=Details.fromMap(element);
         
        
          detail.add(details);

    setState(() {});

    }); 
    
 }

// Future<void> _refresh(){
//   return Future.delayed(
//     Duration(seconds: 0),
//   );
// }

  @override
  void initState() {
    fetchAlbum();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body:fetchDetails(detail, context),

         floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: () async{
             final value = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home()),
                );
                setState(() {});
            
          }),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
                );
  }
}