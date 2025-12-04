import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/componentes/action_label/view_model_label.dart';
import 'package:padaria_app/aplication/resources/shared/colors.dart';

class ActionLabel extends StatelessWidget{
  final LabelViewModel viewModel;
  Color style;

  ActionLabel._({
    super.key,
    required this.viewModel,
    this.style= primaryBaseColor,
  });

  static ActionLabel instantiate({required LabelViewModel viewModel, Color style = primaryBaseColor}){
    return ActionLabel._(viewModel: viewModel);
  }

  Widget createLabel(){
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: viewModel.text,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ]
          )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return createLabel();
  }
}