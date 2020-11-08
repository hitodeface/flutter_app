import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo_bloc.dart';
import 'todo_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Color(0xffdfdfdf),
      ),
      home: Provider<TodoBloc>(
          create: (context) => new TodoBloc(),
          dispose: (context, bloc) => bloc.dispose(),
          child: TodoListView()),
    );
  }
}
