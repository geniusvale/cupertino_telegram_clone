import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:faker/faker.dart';

class ListChat extends StatefulWidget {
  const ListChat({Key? key}) : super(key: key);

  @override
  State<ListChat> createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            foregroundImage:
                NetworkImage('https://picsum.photos/id/${170 + index}/200/300'),
          ),
          title: Text(faker.person.firstName()),
          subtitle: Text(faker.lorem.sentence()),
          trailing: Text(faker.date.time()),
        ),
      ),
    );
  }
}
