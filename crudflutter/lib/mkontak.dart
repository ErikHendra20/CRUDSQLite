class Contact {
  int _id;
  String _name;
  String _phone;
  String _penghasilan;
  // konstruktor versi 1
  Contact(this._name, this._phone, this._penghasilan);

  // konstruktor versi 2: konversi dari Map ke Contact
  Contact.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._phone = map['phone'];
    this._penghasilan = map['penghasilan'];
  }
  //getter dan setter (mengambil dan mengisi data kedalam object)
  // getter
  int get id => _id;
  String get name => _name;
  String get phone => _phone;
  String get penghasilan => _penghasilan;

  // setter
  set name(String value) {
    _name = value;
  }

  set phone(String value) {
    _phone = value;
  }

  set penghasilan(String value) {
    _penghasilan = value;
  }

  // konversi dari Contact ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['phone'] = phone;
    map['penghasilan'] = penghasilan;
    return map;
  }

}