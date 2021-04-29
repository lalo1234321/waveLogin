
import 'package:betatindog/helpers/home_view.dart';
import 'package:betatindog/widgets/btn.dart';
import 'package:betatindog/widgets/custom_input.dart';
import 'package:betatindog/widgets/wave_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeView>(context);
    final size = MediaQuery.of(context).size;
    // para saber si el keyboard está abierto
    final bool keyBoardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final emailCtl = TextEditingController();
    final passCtl = TextEditingController();


    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: size.height -200,
            color: Colors.blue
          ),
          AnimatedPositioned(
            duration: Duration( milliseconds: 500 ),
            curve: Curves.easeOutQuad,
            top: keyBoardOpen ? -size.height / 3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Colors.white
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( top: 100 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CustomInput(
                  hintText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                  textController: emailCtl,
                ),
                SizedBox(height: 10,),
                CustomInput(
                  hintText: 'Password',
                  obscureText: model.isVisible ? true : false,
                  prefixIconData: Icons.lock_outline,
                  sufixIconData: model.isVisible ? Icons.visibility : Icons.visibility_off ,
                  textController: passCtl,
                ),
                SizedBox(height: 20,),
                Btn(
                  title: 'Login',
                  hasBorder: false,
                  onChanged: () {
                    print('email ${emailCtl.text} \npassword ${passCtl.text}');
                  },
                ),
                SizedBox(height: 20,),
                Btn(
                  title: 'Sing Up',
                  hasBorder: true,
                  onChanged: () {
                    Navigator.pushReplacementNamed(context, 'register');
                  },
                ),
                
              ],
          ),
        ),
        ],
        
      )

    );
  }
}