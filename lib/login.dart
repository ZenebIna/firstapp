import 'package:firstapp/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visibilite=true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.only(top: 25),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Image.asset("assets/login.jpeg"),
                  ),
                ),
                  TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

               /* TextFormField(
                  decoration: InputDecoration(
                    hintText: "Login",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                     
                    ),
                     prefixIcon: Icon(Icons.lock), 
                  ),
                ),*/
            
                TextFormField(
                  obscureText: visibilite,
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Mot de passe",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),        
                    ),
                    prefixIcon: Icon(Icons.person),
                     suffixIcon: InkWell(
                        child: visibilite?Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                        onTap: () {
                          visibilite=!visibilite;
                          setState(() {
                            
                          });
                        }
                      ) 
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    if(email.text.isEmpty || password.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Veillez saisir le login ou le mot de passe!")),
                        );
                    }
                    if(email.text=="example@gmail.com" && password.text=="A4!g|s@8"){
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context){
                        return Home();
                          }));
                    }  else{
                   ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                          content: Text("Login ou mot de passe,incorrect")));};
                  },
                  child: Text("Connexion"),
              /*  style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor: 
                    MaterialStateProperty.all(Colors.cyan),
                ),*/
                ),
              ],
            ),
          ),
        ),
      ) ,

    ) ;
  }
}