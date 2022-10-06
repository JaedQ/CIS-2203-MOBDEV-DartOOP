import '../models/user.dart';

class PhoneBookService {
  List<User> _users;

  PhoneBookService(this._users);

  void displayContacts() {
    for (var x in _users) {
      print("-------------------------------------------------");
      print("First Name: ${x.Fname}");
      print("Last Name: ${x.Lname}");
      print("Phone Number: ${x.PhoneNumber}");
      print("Address: ${x.Address}");
    }
    print("\n");
  }

  void addContact(String Fname, String Lname, String PhoneN, String Address) {
    User temp = new User(Fname, Lname, PhoneN, Address);
    _users.add(temp);
  }

  User? _findUser(String phoneNumber) {
    User? result = _users.firstWhere((x) => x.PhoneNumber == phoneNumber);
    return result;
  }

  void removeContact(String phoneNumber) {
    User? temp = _findUser(phoneNumber);

    if (temp != null) {
      _users.removeWhere((x) => x.PhoneNumber == phoneNumber);
    } else {
      print("User not found!");
    }
  }

  void searchAndDisplay(String phoneNumber) {
    User? temp = _findUser(phoneNumber);
    if (temp != null) {
      print("Contact Found:");
      print("-------------------------------------------------");
      print("First Name: ${temp.Fname}");
      print("Last Name: ${temp.Lname}");
      print("Phone Number: ${temp.PhoneNumber}");
      print("Address: ${temp.Address}");
    } else {
      print("User not found!");
    }
  }
}
