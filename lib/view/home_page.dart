import 'package:flutter/material.dart';
import 'package:food_app/model/recipe.dart';
import 'package:food_app/view/widget/food_card.dart';

class HomePage extends StatelessWidget {

  List<Recipe> listRecipe = [];

  @override
  Widget build(BuildContext context) {
    listRecipe = _dataRecipe();
    return Scaffold(
      appBar: AppBar(
        title: Text('Food App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listRecipe.length,
        itemBuilder: (BuildContext context, int index)
          {return FoodCard(listRecipe[index]);}
      ),
    );
  }
  //
  List<Recipe> _dataRecipe() {
    return [Recipe(1, 'recipe1', 30.5, '4.9', '30 min',
      'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
      Recipe(2, 'recipe2', 60, '4.9', '40 min',
          'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
      Recipe(3, 'recipe3', 75, '4.8', '20 min',
          'https://images.unsplash.com/photo-1428660386617-8d277e7deaf2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=967&q=80'),
      Recipe(4, 'recipe4', 84, '4.7', '25 min',
          'https://images.unsplash.com/photo-1445979323117-80453f573b71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1053&q=80'),
      Recipe(5, 'recipe5', 90, '4.1', '35 min',
          'https://images.unsplash.com/photo-1579712267685-42da80f60aa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'),

    ];
  }
}
