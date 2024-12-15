

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizza_app/components/macro.dart';
import 'package:pizza_repository/pizza_repository.dart';

class DetailsScreen extends StatelessWidget {
  final Pizza pizza;
  const DetailsScreen({
    required this.pizza,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.width -40 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  image:  DecorationImage(image: AssetImage('assets/${pizza.picture}')),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                    )
                  ]
                  
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              pizza.name,
                              style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                              ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                      '\$${ pizza.price -  pizza.price *(pizza.discount/100)}',
                                     style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context).colorScheme.primary
                                              ),
                                    ),
                                    Text(
                                    '\$${pizza.price}',
                                     style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough
                                    ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          MyMacro(
                            val: pizza.macros.calories,
                            title: 'calories',
                            icon: FontAwesomeIcons.fire,
                          ),
                          const SizedBox(width: 10.0,),
                          MyMacro(
                             val: pizza.macros.proteins,
                            title: 'protein',
                            icon: FontAwesomeIcons.dumbbell,
                          ),
                          const SizedBox(width: 10.0,),
                           MyMacro(
                             val: pizza.macros.fat,
                            title: 'fats',
                            icon: FontAwesomeIcons.oilWell,
                          ),
                          const SizedBox(width: 10.0,),
                          MyMacro(
                             val: pizza.macros.carbs,
                            title: 'carbs',
                            icon: FontAwesomeIcons.breadSlice,
                          ),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                              elevation: 3.0,
                              backgroundColor:
                                  Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                           child: const Text(
                            'Buy Now',
                             style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                            ),
                           ),
                       ),
                       
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
          ),
      ),
    );
  }
}