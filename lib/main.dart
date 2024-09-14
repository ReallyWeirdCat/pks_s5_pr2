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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
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
               "Авторизация", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
           ),

           const Spacer(),

           Padding(
             padding: const EdgeInsets.all(18.0),
             child: Wrap(
               runSpacing: 16.0,
               alignment: WrapAlignment.spaceAround,
               children: <Widget> [
                 // Поле логина
                 const TextField(
                   decoration: InputDecoration( hintText: 'Логин',
                     filled: true,
                     fillColor: Colors.black12,
                     hintStyle: TextStyle(color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w500),
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
                     hintStyle: TextStyle(color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w500),
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
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Checkbox(
                       value: false,
                       onChanged: (value) {},
                       side: WidgetStateBorderSide.resolveWith(
                           (states) => const BorderSide(width: 2.0, color: Colors.grey),)
                       ,),
                     TextButton(
                         onPressed: (){},
                         child: const Text("Запомнить меня", style: TextStyle(color: Colors.black38, fontSize: 16, fontWeight: FontWeight.w500),
                         )
                     ),
                   ],
                 ),
                 const Spacer(),
                 // Кнопка входа
                 SizedBox(
                   width: double.infinity,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       foregroundColor: Colors.white,
                       backgroundColor: Colors.blue,
                       padding: const EdgeInsets.all(20),
                       textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5),
                       ),
                     ),
                     onPressed: () {},
                     child: const Text('Войти', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                   ),
                 ),

                 // Кнопка регистрации
                 SizedBox(
                   width: double.infinity,
                   child: OutlinedButton(
                     style: ElevatedButton.styleFrom(
                       foregroundColor: Colors.blue,

                       side: const BorderSide(color: Colors.blue),
                       shadowColor: Colors.white,
                       padding: const EdgeInsets.all(20),
                       textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5),
                       ),
                     ),
                     onPressed: () {},
                     child: const Text('Регистрация', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                   ),
                 ),

                 // Кнопка восстановления
                 TextButton(
                     onPressed: (){},
                     child: const Text("Восстановить пароль", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
                     ),
                 ),
             ]),
           ),
           const Spacer(),
       ]),
    );
  }
}
