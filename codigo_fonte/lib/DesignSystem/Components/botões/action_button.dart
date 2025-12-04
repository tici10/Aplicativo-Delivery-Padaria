import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/componentes/action_button/view_model_button.dart';
import 'package:padaria_app/aplication/resources/shared/colors.dart';
import 'package:padaria_app/aplication/resources/shared/size.dart';

class ActionButton extends StatelessWidget {
  final ButtonViewModel viewModel;
  Color backgroundColor;
  int size;

  ActionButton._({
    super.key,
    required this.viewModel,
    this.backgroundColor = primaryBaseColor,
    this.size = smallBase,
  });

  static ActionButton instantiate({required ButtonViewModel viewModel, backgroundColor = primaryBaseColor, size = smallBase}) {
    return ActionButton._(viewModel: viewModel);
  }

  void setStyle(ActionButtonStyle style){
    switch(viewModel.style){
      case ActionButtonStyle.primary:
        backgroundColor = Color(0x3C2605);
        break;
      case ActionButtonStyle.secondary:
        backgroundColor= Color(0xAE8549);
        break;
      case ActionButtonStyle.tertiary:
        backgroundColor= Color(0xD2CCC5);
        break;
    } 
  }

  void setSize(ActionButtonSize size){
    switch(viewModel.size){
      case ActionButtonSize.small:
        this.size = smallBase;
        break; 
      case ActionButtonSize.medium:
        this.size = mediumBase;
        break;
      case ActionButtonSize.large:
        this.size = largeBase;
        break;
    }
  }
   
  Widget createElevatedButton() {
    double verticalPadding = 12;
    double horizontalPadding = 32;
    return ElevatedButton(onPressed:viewModel.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBaseColor,
        padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding)
      ),
      child: Text(viewModel.text)
      );
  }

  @override
  Widget build(BuildContext context) {
    setStyle(viewModel.style);
    setSize(viewModel.size);
    return createElevatedButton();
  }
}