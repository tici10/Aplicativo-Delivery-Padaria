import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/componentes/action_label/action_label.dart';
import 'package:padaria_app/aplication/componentes/action_label/view_model_label.dart';
import 'package:padaria_app/aplication/scenes/produtos/produto_screen.dart';
import 'package:padaria_app/aplication/componentes/action_card/action_card.dart';
import 'package:padaria_app/aplication/componentes/action_card/view_model_card.dart';
import 'package:padaria_app/aplication/componentes/user_icon/user_icon.dart';
import 'package:padaria_app/aplication/componentes/user_icon/user_icon_model.dart';
import 'package:padaria_app/aplication/componentes/action_card/action_card.dart';
import 'package:padaria_app/aplication/componentes/action_button/action_button.dart';
import 'package:padaria_app/aplication/componentes/action_button/view_model_button.dart';


class HomeView extends StatelessWidget {
  const HomeView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Title(
          color: Colors.black, 
          child: Text('Home')
        ),
        backgroundColor: Color(0xFFF0C9),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFFF0C9),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16),
                Expanded(
                  child: ActionLabel.instantiate(
                    viewModel: LabelViewModel(text:'Pesquise aqui...')),
                ),

                const SizedBox(width: 16),

                UserIcon.instantiate(
                  viewModel: UserIconModel(
                    image: Image.asset("assets/images/user-perfil.png")
                  ) 
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      ActionCard.instantiate(
                        viewModel: CardViewModel(
                          image: 'assets/images/baguete.jpg', 
                          nome: 'Pão baguete',
                          preco: '15.0',
                        ),
                        view_model_button: ActionButton.instantiate(
                          viewModel: ButtonViewModel(
                            size: ActionButtonSize.large,
                            style: ActionButtonStyle.primary,
                            text: 'Visualizar produto',
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => const ProdutoScreen()),
                              );
                            }
                          )
                        ),
                        size: 210.0
                      ),
                      SizedBox(height: 20.0),
                      ActionCard.instantiate(
                        viewModel: CardViewModel(
                          image: 'assets/images/Pao-australiano.jpg', 
                          nome: 'Pão Australiano',
                          preco: '5.0',
                        ),
                        view_model_button: ActionButton.instantiate(
                          viewModel: ButtonViewModel(
                            size: ActionButtonSize.large,
                            style: ActionButtonStyle.primary,
                            text: 'Visualizar produto',
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => const ProdutoScreen()),
                              );
                            }
                          ),
                        ),
                        size: 210.0,  
                      ),
                    ]
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ActionCard.instantiate(
                        viewModel: CardViewModel(
                          image: 'assets/images/bolo-laranja.jpg', 
                          nome: 'Bolo de Laranja',
                          preco: '15.0',
                        ),
                        view_model_button: ActionButton.instantiate(
                          viewModel: ButtonViewModel(
                            size: ActionButtonSize.large,
                            style: ActionButtonStyle.primary,
                            text: 'Visualizar produto',
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => const ProdutoScreen()),
                              );
                            }
                          )
                        ),
                        size: 210.0
                      ),
                      SizedBox(height: 20.0),
                      ActionCard.instantiate(
                        viewModel: CardViewModel(
                          image: 'assets/images/bolo-chocolate.jpg', 
                          nome: 'Bolo de chocolate',
                          preco: '20.0',
                        ),
                        view_model_button: ActionButton.instantiate(
                          viewModel: ButtonViewModel(
                            size: ActionButtonSize.large,
                            style: ActionButtonStyle.primary,
                            text: 'Visualizar produto',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ProdutoScreen()),
                              );
                            }
                          ),
                        ),
                        size: 210.0,  
                      ),
                    ]
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      ActionCard.instantiate(
                        viewModel: CardViewModel(
                          image: 'assets/images/panetone.jpeg', 
                          nome: 'Panetone Tradicional',
                          preco: '15.0',
                        ),
                        view_model_button: ActionButton.instantiate(
                          viewModel: ButtonViewModel(
                            size: ActionButtonSize.large,
                            style: ActionButtonStyle.primary,
                            text: 'Visualizar produto',
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => const ProdutoScreen()),
                              );
                            }
                          )
                        ),
                        size: 210.0
                      ),
                      SizedBox(height: 20.0),
                      ActionCard.instantiate(
                        viewModel: CardViewModel(
                          image: 'assets/images/rosca-canela.jpg', 
                          nome: 'Rosca recheada',
                          preco: '20.0',
                        ),
                        view_model_button: ActionButton.instantiate(
                          viewModel: ButtonViewModel(
                            size: ActionButtonSize.large,
                            style: ActionButtonStyle.primary,
                            text: 'Visualizar produto',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ProdutoScreen()),
                              );
                            }
                          ),
                        ),
                        size: 210.0,  
                      ),
                    ]
                  ),
                  
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}