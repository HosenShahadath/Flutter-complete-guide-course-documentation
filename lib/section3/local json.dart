import 'package:flutter/material.dart';
import 'localservice.dart';
import 'person 2.dart';

class LocalJson extends StatelessWidget {
  const LocalJson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSON in Flutter')),
      body: FutureBuilder(
        future: LocalService().loadPerson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Person person = snapshot.data as Person;
            return Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(person.image),
                          radius: 50,
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          person.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          person.address,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          person.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
