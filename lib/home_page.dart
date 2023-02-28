import 'package:activity_four/students.dart';
import 'package:flutter/material.dart';
import 'package:activity_four/details_page.dart';
import 'package:activity_four/form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List<Students> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: const Text("Basic Information App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FormPage()));
          setState(() {
            if (result != ""){
              data.add(result);
            }
          });
        },
        backgroundColor: Colors.black12,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            Students information = data[index];
            final remove = data[index];
            return Dismissible(
                background: Container(color: Colors.red,),
                key: Key(remove.toString()),
                onDismissed: (direction) {
                  setState(() {
                    data.removeAt(index);
                  });
                },
                child:Card(
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      contentPadding: const EdgeInsets.all(25),
                      title: Text("${information.name}"),
                      subtitle: Text("${information.course} - ${information.year}"),

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(information)));
                      },
                    ))
            );
          }),
    );
  }
}
