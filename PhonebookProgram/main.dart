import 'models/user.dart';
import 'service/PhoneBookService.dart';

void main() {
  List<User> users = <User>[];
  users.add(User("Jade", "Wapano", "09057340309", "Duero Bohol"));
  users.add(User("Ravanesh", "Vequiso", "09523403091", "Talamban Cebu"));
  users.add(User("Jamian", "Huang", "09037641319", "Talamban Cebu"));
  users.add(User("April", "May", "09407210309", "Tagbilaran Bohol"));
  users.add(User("Sunny", "Summer", "09327216589", "Duero Bohol"));
  PhoneBookService pb = new PhoneBookService(users);

  print("\nFIRST 5 CONTACTS:");
  pb.displayContacts(); //displaying contacts.

  print("\n\nADDING NEW CONTACT:");
  pb.addContact("Quimchee", "Lianna", "09047340309",
      "Northern Freljord"); // Adding new contact.
  pb.displayContacts();

  pb.removeContact("09037641319"); //Removing a contact through phone number.
  print("\n\nWITH REMOVE:");
  pb.displayContacts();

  pb.searchAndDisplay("09407210309");
}
