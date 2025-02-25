import 'package:flutter/material.dart';
import 'onlineservice.dart';
import 'person.dart';

class OnlineJson extends StatelessWidget {
  const OnlineJson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json in flutter'),
      ),
      body: FutureBuilder(
          future: OnlineService().loadPerson(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              Person person = snapshot.data as Person;
              return Center(
                child: Padding(padding: EdgeInsets.all(16),
                child: Card(
                  elevation: 4,
                  child: Padding(padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(person.image),
                        radius: 50,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        person.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        person.address,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Age: ${person.age}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 10),
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
            }else{
              return const Center(child: CircularProgressIndicator(),);
            }
          },
      ),
    );
  }
}
