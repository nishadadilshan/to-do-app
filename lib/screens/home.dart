import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/widgets/todo_item.dart';

import '../widgets/search_box_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _appBar(),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Container(
          child: Column(
            children: [
              searchBox(),
              Expanded(child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 20),
                    child: const Text("All ToDos", style:  TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                  ),
                  ToDoItem(),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }


  AppBar _appBar(){
    return AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu, color: tdBlack, size: 30,),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/images/avatar.png"),
              ),

            ),
          ],
        ),
        backgroundColor: tdBGColor);
  }
}
