import "package:flutter/material.dart";

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[500],
          title: const Text("flutter UDC",
              style: TextStyle(
                color: Color.fromARGB(255, 221, 2, 2),
              )),
          leading: const Icon(
            Icons.menu,
            size: 50.5,
          ),
          actions: [
            Icon(Icons.facebook),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: clickMe,
            ),
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }

  void clickMe() {
    print("click me ");
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                 setState(() {
                    counter--;
                 });
                  print(counter);
                },
                child: Icon(
                  Icons.remove,
                  size: 50,
                )),
            Text("$counter",
                style: TextStyle(
                  fontSize: 55,
                )),
            TextButton(
                onPressed: () {
                  setState((){
                    counter++;
                  });
                   print(counter);
                },
                child: Icon(Icons.add, size: 50)),
          ],
        ),
      ),
    );
  }
}
