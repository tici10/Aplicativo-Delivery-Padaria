import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/componentes/user_icon/user_icon_model.dart';

class UserIcon extends StatelessWidget{
  final UserIconModel viewModel;
  double size;

  UserIcon._({
    super.key,
    required this.viewModel,
    this.size = 120,
  });

  static UserIcon instantiate({required UserIconModel viewModel, size = 120}){
    return UserIcon._(viewModel: viewModel);
  }

  Widget createIcon(){
    return Column(
      children: [
        SizedBox(
          height: 50.0,
          width: 60.0,
          child: viewModel.image,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return createIcon();
  }
}