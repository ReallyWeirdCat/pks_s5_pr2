import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PKS S5P2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      // title: const Text("Папин Николай ЭФБО-02-22"),
      ),
       body: Column(
         children: <Widget> [

           // Название
           const Text(
               "Авторизация", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
           ),

           // Поле логина
           const TextField(
             decoration: InputDecoration( hintText: 'Логин',
               filled: true,
               fillColor: Colors.black12,
               hintStyle: TextStyle(color: Colors.black38, fontSize: 22),
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(5)),
                 borderSide: BorderSide.none,
               ),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(5)),
                 borderSide: BorderSide.none,
               ),
             ),
           ),

           // Поле пароля
           const TextField(
             decoration: InputDecoration( hintText: 'Пароль',
               filled: true,
               fillColor: Colors.black12,
               hintStyle: TextStyle(color: Colors.black38, fontSize: 22),
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(5)),
                 borderSide: BorderSide.none,
               ),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(5)),
                 borderSide: BorderSide.none,
               ),
             ),
           ),

           // Запомнить меня
           Row(
             children: [
               Checkbox(value: false, onChanged: (value) {},),
               TextButton(
                   onPressed: (){},
                   child: const Text("Запомнить меня", style: TextStyle(color: Colors.grey, fontSize: 20),
                   )
               ),
             ],
           ),

           // Кнопка входа
           SizedBox(
             width: double.infinity,
             child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.blue,
                 padding: const EdgeInsets.all(20),
                 textStyle: const TextStyle(fontSize: 22),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5),
                 ),
               ),
               onPressed: () {},
               child: const Text('Войти'),
             ),
           ),

           // Кнопка регистрации
           SizedBox(
             width: double.infinity,
             child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.blue,
                 padding: const EdgeInsets.all(20),
                 textStyle: const TextStyle(fontSize: 22),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5),
                 ),
               ),
               onPressed: () {},
               child: const Text('Зарегистрироваться'),
             ),
           ),

           // Кнопка восстановления
           TextButton(
               onPressed: (){},
               child: const Text("Забыли пароль?", style: TextStyle(color: Colors.grey, fontSize: 20),
               )
           )
         ]
       ),
    );
  }
}
