import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tnstc/pages/stopsView.dart';
import 'package:tnstc/stopslistProvider.dart';

class RouteSearchContainer extends StatelessWidget {
  const RouteSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StopsListProvider>(
      builder:((context,value,child)=> Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 47,left: 15),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    const Stack(
                        alignment: AlignmentDirectional.center,
                        children:[
                          Icon(Icons.circle_outlined,size: 15,),
                          Icon(Icons.circle,size: 10,)
                        ]
                    ) ,
                    Expanded(
                        child: SizedBox(
                          width:25,
                          child: LayoutBuilder(
                            builder: (BuildContext context,BoxConstraints constraints){
                              return Flex(
                                direction: Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainHeight()/6).floor(),
                                        (index) => const SizedBox(
                                          width: 3,
                                          height: 5,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.deepPurple
                                            ),
                                          ),
                                        )
                                ),
                              );
                            },
                          ),
                        )
                    ),
                    const Icon(Icons.directions_bus,size: 20),
                    Expanded(
                        child: SizedBox(
                          width:25,
                          child: LayoutBuilder(
                            builder: (BuildContext context,BoxConstraints constraints){
                              return Flex(
                                direction: Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainHeight()/6).floor(),
                                        (index) => const SizedBox(
                                          width: 3,
                                          height: 5,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.deepPurple
                                            ),
                                          ),
                                        )
                                ),
                              );
                              },
                          ),
                        )
                    ),
                    const Icon(Icons.location_on,size: 15)
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: const Text("Choose start station"),
                        onTap: () =>{
                          value.loadFruits(),
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>StopsView()))
                        },
                      ),
                      const SizedBox(height: 20),
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Colors.black
                        ),
                        child: Container(
                          height: 2,

                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("Choose end station")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ));
  }
}
