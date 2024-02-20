import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tnstc/stopslistProvider.dart';

class StopsView extends StatefulWidget {
  const StopsView({super.key});

  @override
  State<StopsView> createState() => _StopsViewState();
}

class _StopsViewState extends State<StopsView> {
  String s="";
  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<StopsListProvider>(
          builder: ((context,value,child)=>
              Scaffold(
                  body: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextField(
                        controller: textcontroller,
                        onChanged: (text){
                          setState(() {
                            s=textcontroller.text;
                          });
                          value.changeHandler(s);
                          },
                        decoration:const InputDecoration(hintText: "Enter value"),
                      ),
                      Expanded(
                            child: textcontroller.text == "" ? ListView.builder(
                                shrinkWrap: false,
                                itemCount: value.fruitNames.length,
                                itemBuilder: (context, index){
                                  return ListTile(
                                    title: Text(value.fruitNames[index]),
                                  );
                                }
                            ) :
                            ListView.builder(
                                shrinkWrap: false,
                                itemCount: value.res.length,
                                itemBuilder: (context,index){
                                  return ListTile(
                                    title: Text(value.res[index])
                                  );
                                }
                            )
                      )
                    ]
                  )
              )
          )
      )
    );
  }
}
