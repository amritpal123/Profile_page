import 'package:flutter/material.dart';
import 'dataModel.dart';

Widget fetchDetails(List<Details> listDetails, BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(40.0),
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        children: listDetails.map((Details? detail) {
          return GridTile(
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row( 
                    children: <Widget>[
                      Text(
                        "Name - ",
                        style:TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(width: 5.0),
                   Text(
                            detail!.name!.title!,
                        style: TextStyle(fontSize: 20.0),),
                    SizedBox(width: 2.0),
                  Text(
                            detail.name!.first!,
                            style: TextStyle(fontSize: 20.0),
                          ),
                  SizedBox(width: 2.0),

                  Text(
                            detail.name!.last!,
                            style: TextStyle(fontSize: 20.0),
                          ),

                  SizedBox(width: 30.0),
                  
                  Text(
                      "Gender - ",
                       style: TextStyle(fontSize: 20.0),
                    ),
                     SizedBox(width: 2.0),
                    Text(
                        detail.gender!,
                        style: TextStyle(fontSize: 20.0),
                      ),
                  
                  ]),
                   SizedBox(height: 20.0),
                 Text(
                      'Location - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 20.0),
                  Row(children: <Widget>[
                  Text(
                      'Street - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.location!.street!.number!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 5.0),
                    Text(
                        detail.location!.street!.name!,
                        style: TextStyle(fontSize: 20.0),
                      ),
                 
                  ]),
                  Row(children: <Widget>[
                  Text(
                      'City - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.location!.city!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),

                   Row(children: <Widget>[
                  Text(
                      'State - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.location!.state!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),

                 Row(children: <Widget>[
                  Text(
                      'Country - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.location!.country!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),
                   SizedBox(height: 20.0),
                   Row(children: <Widget>[
                  Text(
                      'Email - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.email!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),
                  SizedBox(height: 10.0),
                  Row(children: <Widget>[
                  Text(
                      'Phone - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 10.0),
                   Text(
                      detail.phone!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 SizedBox(width: 30.0),
                  Text(
                      'Cell - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 10.0),
                   Text(
                      detail.cell!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),
                   SizedBox(height: 10.0),

                   Row(children: <Widget>[
                  Text(
                      'DOB - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.dob!.date!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.dob!.age!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),
                   SizedBox(height: 10.0),
                  Row(children: <Widget>[
                  Text(
                      'Registered - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.registered!.date!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.registered!.age!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),
                  SizedBox(height: 10.0),
                  Row(children: <Widget>[
                  Text(
                      'Id - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                    if (detail.id!.name !=null)
                   Text(
                      detail.id!.name!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                    if (detail.id!.value !=null)
                   Text(
                      detail.id!.value!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ]),
                SizedBox(height: 10.0),
                 Row(children: <Widget>[
                  Text(
                      'Nat - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Text(
                      detail.nat!,
                      style: TextStyle(fontSize: 20.0),
                    ),
                 
                  ]),

                  Row(children: <Widget>[
                  Text(
                      'Photos - ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 20.0),
                   Image.network(
                      detail.picture!.large!,
                    ),
                    SizedBox(width: 20.0),
                   Image.network(
                      detail.picture!.medium!,
                    ),
                    SizedBox(width: 20.0),
                   Image.network(
                      detail.picture!.thumbnail!,
                    ),
                 
                  ]),

                
                ],),);
        }).toList()),
        
  );
}



