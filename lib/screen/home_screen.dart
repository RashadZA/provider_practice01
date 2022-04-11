import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice01/model/my_counter.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('You have pushed the button this many times: '),
            Consumer<MyCounter>(
              builder: (BuildContext context, MyCounter value, Widget? child) =>
                  Text(
                    '${value.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Provider.of<MyCounter>(context).increment();
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
                    child: Text("Increment",style: TextStyle(color: Colors.black,fontSize: 20)),
                  )
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Provider.of<MyCounter>(context).decrement();

              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.remove,color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
                    child: Text("Decrement",style: TextStyle(color: Colors.white,fontSize: 20)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
