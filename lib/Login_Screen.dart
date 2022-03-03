import 'package:flutter/material.dart';
import 'package:login_design/Shared/Componets/Components.dart';
import 'package:login_design/Shared/Componets/context.dart';
class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),),
                  SizedBox(height: 30,),
                  TextFormWidget(Control: emailController ,txt: "email addres" ,preficon:Icons.mail ,type:TextInputType.emailAddress  ),
                  SizedBox(height: 20,),
                  TextFormWidget(Control: PasswordController ,txt: "password" ,preficon:Icons.lock ,type:TextInputType.visiblePassword ,
                      sufficon :suffIcon ,
                      ispass: isPassword,
                    onTap: (){
                    setState(() {
                      isPassword = ! isPassword ;
                      (isPassword) ? (suffIcon = Icons.visibility_off):(suffIcon = Icons.remove_red_eye);
                    });
                    }

                  ),
                  SizedBox(height: 20,),
                  TextFormWidget(Control: PhoneController ,txt: "phone" ,preficon:Icons.phone ,type:TextInputType.phone  ),
                  SizedBox(height: 20,),
                  TextFormWidget(Control: AddressController ,txt: "address" ,preficon:Icons.home,type:TextInputType.emailAddress  ),
                  SizedBox(height: 30,),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20.0),
                    ),
                    width: double.infinity,
                    height: 50.0,
                    child: MaterialButton(
                        onPressed: (){
                          if (formKey.currentState!.validate())
                            {
                              print("yes");
                            }
                        },
                      child: Text("Login",style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),),
                      color: Colors.blue,
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
