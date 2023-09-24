import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.list_rounded,
                size: 30,
              ),
            ),
          ],
          title: Text(
            "Project Uji Coba",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 137, 203, 249), 
                borderRadius: BorderRadius.circular(10), 
              ),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20), 
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://th.bing.com/th/id/OIP.pk7lqSMwXRruXYdIjZSbHQHaF5?w=195&h=156&c=7&r=0&o=5&dpr=1.5&pid=1.7",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Purnomo Sigit",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'Jabatan : Direktur',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
