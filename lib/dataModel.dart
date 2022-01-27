class Details{
  String? gender;
  String? email;
  String? phone;
  String? cell;
  photoModel? picture;
  LocationModel? location;
  NameModel? name;
  dobModel? dob;
  regModel? registered;
  idModel? id;
  String? nat;


  Details(
    {this.gender,
    this.location,
    this.name,
    this.email,
    this.cell,
    this.phone,
    this.picture,
    this.dob,
    this.registered,
    this.id,
    this.nat,
});

 factory Details.fromMap(Map<String,dynamic> parsedJson){
   return Details(
   gender:parsedJson['gender'],
   location:LocationModel.fromMap(parsedJson['location']),
   email: parsedJson['email'],
   phone:parsedJson['phone'].toString(),
   cell:parsedJson['cell'].toString(),
   name: NameModel.fromMap(parsedJson["name"]),
   picture:photoModel.fromMap(parsedJson['picture']),
   dob:dobModel.fromMap(parsedJson['dob']),
   registered: regModel.fromMap(parsedJson['registered']),
   id:idModel.fromMap(parsedJson['id']),
   nat:parsedJson['nat'],
   );
 }
}

class NameModel{
  String? title;
  String? first;
  String? last;
 NameModel({this.title,this.first,this.last});

 factory NameModel.fromMap(Map<String,dynamic> nameJson){
   return NameModel(
   title:nameJson['title'],
   first:nameJson['first'],
   last:nameJson['last'],
   );
 }
}


class LocationModel{
  streetModel? street;
  String? city;
  String? state;
  String? country;
  String? postcode;
  coordModel? coordinates;
  timeModel? timezone;


  LocationModel(
    {this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
    });

 factory LocationModel.fromMap(Map<String,dynamic> parsedJson){
   return LocationModel(
   street:streetModel.fromMap(parsedJson['street']),
   city:parsedJson['city'],
   state: parsedJson['state'],
   country:parsedJson['country'],
   postcode:parsedJson['postcode'].toString(),
   coordinates:coordModel.fromMap(parsedJson['coordinates']),
   timezone:timeModel.fromMap(parsedJson['timezone']),
   );
 }
}



class streetModel{
  String? number;
  String? name;


  streetModel(
    {this.number,
    this.name,
    });

 factory streetModel.fromMap(Map<String,dynamic> parseJson){
   return streetModel(
   number:parseJson['number'].toString(),
   name:parseJson['name'],
   );
 }
}



class coordModel{
  String? latitude;
  String? longitude;

  coordModel(
    {this.latitude,
    this.longitude,
    });

 factory coordModel.fromMap(Map<String,dynamic> parsedJson){
   return coordModel(
   latitude:parsedJson['latitude'].toString(),
   longitude:parsedJson['longitude'].toString(),
   );
 }
}

class timeModel{
  String? offset;
  String? desc;

  timeModel(
    {this.offset,
    this.desc,
    });

 factory timeModel.fromMap(Map<String,dynamic> parsedJson){
   return timeModel(
   offset:parsedJson['offset'].toString(),
   desc:parsedJson['description'],
   );
 }
}

class photoModel{
  String? large;
  String? medium;
  String? thumbnail;

  photoModel(
    {this.large,
    this.medium,
    this.thumbnail});

 factory photoModel.fromMap(Map<String,dynamic> parsedJson){
   return photoModel(
   large:parsedJson['large'],
   medium:parsedJson['medium'],
   thumbnail: parsedJson['thumbnail']
   );
 }
}

class dobModel{
  String? date;
  String? age;

  dobModel(
    {this.date,
    this.age});

 factory dobModel.fromMap(Map<String,dynamic> parsedJson){
   return dobModel(
   date:parsedJson['date'].toString(),
   age:parsedJson['age'].toString(),
   );
 }
}


class regModel{
  String? date;
  String? age;

  regModel(
    {this.date,
    this.age});

 factory regModel.fromMap(Map<String,dynamic> parsedJson){
   return regModel(
   date:parsedJson['date'].toString(),
   age:parsedJson['age'].toString(),
   );
 }
}


class idModel{
  String? name;
  String? value;

  idModel(
    {this.name,
    this.value,
    });

 factory idModel.fromMap(Map<String,dynamic> parsedJson){
   return idModel(
   name:parsedJson['name'],
   value:parsedJson['value'],
   );
 }
}
