import 'package:flutter/material.dart';
import 'package:mart23/contact_data.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kişi Listesi"),
      ),
      body: ContactList(iContact),
    );
  }
}

class ContactList extends StatelessWidget {
  final List _contacts;
  ContactList(this._contacts);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactList(),
      //children: _buildContactList(),//[]
    );
  }
//List<ListTile>
  List<_ContactListItem> _buildContactList() {
    var bilgi;
    bilgi = _contacts.map((contact) => contact.tamad);
    print(bilgi.runtimeType);
    print(bilgi.toList());
    return _contacts.map((contact) => _ContactListItem(contact)).toList();
  }
}

class _ContactListItem extends ListTile {
  _ContactListItem(Contact contact)
      : super(
            title: Text(contact.tamad),
            subtitle: Text(contact.eposta),
            leading: CircleAvatar(
              child: Text(contact.tamad[0],
              //child:Image.network("https://cdn.dsmcdn.com/mnresize/415/622/ty3/product/media/images/20200522/19/1629884/71728722/1/1_org_zoom.jpg"),
              ),
            ));
}
