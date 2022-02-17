import 'package:flutter/material.dart';

Widget navDrawer(context) => Drawer(
    child: ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Image.network(
                    "https://kurs-market.com/images/pay1.png")),
            const Text("Навигация",
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Авторизация'),
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      const Divider(
        color: Colors.black12,
        height: 10,
        thickness: 2,
        indent: 10,
        endIndent: 10,
      ),
      ListTile(
        leading: const Icon(Icons.list),
        title: const Text('Список'),
        onTap: () {
          Navigator.pushNamed(context, '/UsersListScreen');
        },
      ),
      const Divider(
        color: Colors.black12,
        height: 10,
        thickness: 2,
        indent: 10,
        endIndent: 10,
      ),
      ListTile(
        leading: const Icon(Icons.library_add_check_outlined),
        title: const Text('Переключатели'),
        onTap: () {
          Navigator.pushNamed(context, '/SwitchesDemoScreen');
        },
      ),
      const Divider(
        color: Colors.black12,
        height: 10,
        thickness: 2,
        indent: 10,
        endIndent: 10,
      ),
    ]));
