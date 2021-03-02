import 'package:techamp_flutter_shopping_app/app.dart';

class ProfileMock {
  static const _id = 1;
  static const _email = 'John@gmail.com';
  static const _username = "johnd";
  static const _firstname = 'John';
  static const _lastname = 'Doe';
  static const _city = 'kilcoole';
  static const _street = '7835 new road';
  static const _number = 3;

  static const _zipcode = '12926-3874';
  static const _lat = '-37.3159';
  static const _lng = '81.1496';

  static const _phone = '1-570-236-7033';

  static final json = {
    "id": _id,
    "email": _email,
    "username": _username,
    "name": {"firstname": _firstname, "lastname": _lastname},
    "address": {
      "city": _city,
      "street": _street,
      "number": _number,
      "zipcode": _zipcode,
      "geolocation": {"lat": _lat, "long": _lng}
    },
    "phone": _phone,
  };

  static final model = Profile(
    id: _id,
    email: _email,
    username: _username,
    fullName: FullName(
      firstName: _firstname,
      lastName: _lastname,
    ),
    address: Address(
        city: _city,
        zipcode: _zipcode,
        number: _number,
        street: _street,
        geolocation: Geolocation(
          lat: _lat,
          lng: _lng,
        )),
    phone: _phone,
  );
}
