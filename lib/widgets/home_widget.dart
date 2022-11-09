import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ContactList(),
    );
  }
}

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<String> names = [
    "Able Okosisi",
    "Peter yousi",
    "Okosisi Tammy",
    "Ezekel Jaag",
    "Emma Kunle",
    "Burn Bush",
    "Pere Walli",
    "olu Wa",
    "Zaddy Tapin"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset("assets/images/avatarman2.jpeg"),
            title: Text(
              names[index],
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
            subtitle: const Text("+234-903-0297-400"),
            trailing: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add"),
            ),
          );
        });
  }
}
