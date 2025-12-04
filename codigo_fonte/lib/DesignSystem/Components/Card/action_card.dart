import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/componentes/action_card/view_model_card.dart';
import 'package:padaria_app/aplication/resources/shared/styles.dart';
import 'package:padaria_app/aplication/resources/shared/colors.dart';

class ActionCard extends StatelessWidget {
  final CardViewModel viewModel;
  TextStyle styleproduto1;
  TextStyle styleproduto2;
  double size;

  ActionCard._({
    super.key,
    required this.viewModel,
    this.styleproduto1= nomeproduto,
    this.styleproduto2 = precoproduto,
    this.size = 120,
  });
  

  static ActionCard instantiate({required CardViewModel viewModel, styleproduto1 = nomeproduto, styleproduto2 = precoproduto, size= 120}){
    return ActionCard._(viewModel: viewModel);
  }

  Widget createCard(){
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100.0,
            width: 110.0,
            child: Image.asset(viewModel.image),
          ),
          //Image.asset(viewModel.image),
          Text(
            viewModel.nome,
            style: nomeproduto,
          ),
          //Text('R\$ ${produto.preco.toStringAsFixed(2)}'),
          Text(
            viewModel.preco,
            style: precoproduto,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return createCard();
  }
  
}