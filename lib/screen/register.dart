import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/screen/homescreen.dart';
import 'package:child_rights_society/utiles/registerprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Component/background_image.dart';
import '../Component/text_input_type.dart';
import '../styles/border.dart';
import '../styles/colors.dart';
import '../styles/dimnation.dart';
import '../styles/textstyle.dart';
import '../utiles/loginprovider.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final register = Provider.of<Proregister>(context);
    final login = Provider.of<Prologin>(context);
    return Form(
      key: register.formkeyre,
      autovalidateMode: AutovalidateMode.always,
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.black54, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
            ).createShader(bounds),
          ),
          const BackgroundImage(
            image: "assets/images/back2.jpg",
          ),
          Scaffold(
            backgroundColor: clearColor,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const Center(
                      child: Image(
                        image: AssetImage(
                          "assets/images/logo.png",
                        ),
                        width: 350,
                        height: 300,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TextInputSp(
                            controller: register.userController,

                            textInputType: TextInputType.name,
                            mary: const EdgeInsets.all(10),
                            prif: const Icon(
                              Icons.person,
                              color: iconColo,
                            ),
                            vali: register.valUser,
                            // paddy: EdgeInsets.all(10.00),
                            commpadd: const EdgeInsets.all(10.0),
                            labely: Text(
                              translation(context).name,
                              style: b,
                            ),

                            inputAction: TextInputAction.next,
                          ),
                          Dimanation.high5,
                          TextInputSp(
                            controller: register.emailController,

                            textInputType: TextInputType.name,
                            mary: const EdgeInsets.all(10),
                            prif: const Icon(
                              Icons.email,
                              color: iconColo,
                            ),
                            vali: register.valiemail,
                            // paddy: EdgeInsets.all(10.00),
                            commpadd: const EdgeInsets.all(10.0),
                            labely: Text(
                             translation(context).email,
                              style: b,
                            ),

                            inputAction: TextInputAction.next,
                          ),
                          Dimanation.high5,
                          TextInputSp(
                            controller: register.passController,

                            textInputType: TextInputType.name,
                            mary: const EdgeInsets.all(10),
                            prif: const Icon(
                              Icons.lock,
                              color: iconColo,
                            ),
                            vali: register.validpass,
                            // paddy: EdgeInsets.all(10.00),
                            commpadd: const EdgeInsets.all(10.0),
                            obs: login.pass,
                            sufix: IconButton(
                              onPressed: () {
                                login.showPass();
                              },
                              icon: Icon(
                                login.pass
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: iconColo,
                              ),
                            ),
                            labely: Text(
                              translation(context).password,
                              style: b,
                            ),

                            inputAction: TextInputAction.next,
                          ),
                          Dimanation.high5,
                          TextInputSp(
                            controller: register.conpassController,

                            textInputType: TextInputType.name,
                            mary: const EdgeInsets.all(10),
                            prif: const Icon(
                              Icons.lock,
                              color: iconColo,
                            ),
                            vali: register.validConpass,
                            // paddy: EdgeInsets.all(10.00),
                            commpadd: const EdgeInsets.all(10.0),
                            obs: register.passy,
                            sufix: IconButton(
                              onPressed: () {
                                register.showPassregy();
                              },
                              icon: Icon(
                                register.passy
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: iconColo,
                              ),
                            ),
                            labely: Text(
                             translation(context).confirmpassword,
                              style: b,
                            ),

                            inputAction: TextInputAction.next,
                          ),
                          Dimanation.high5,
                          TextInputSp(
                            controller: register.phoneController,

                            textInputType: TextInputType.name,
                            mary: const EdgeInsets.all(10),
                            prif: const Icon(
                              Icons.phone,
                              color: iconColo,
                            ),
                            vali: register.validateMobile,
                            // paddy: EdgeInsets.all(10.00),
                            commpadd: const EdgeInsets.all(10.0),
                            labely: Text(
                             translation(context).phonenumber,
                              style: b,
                            ),

                            inputAction: TextInputAction.next,
                          ),
                          Dimanation.high5,
                          GestureDetector(
                            onTap: () {
                              if (register.formkeyre.currentState != null &&
                                  register.formkeyre.currentState!.validate()) {
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   // const SnackBar(
                                //   //   content: Text('Processing Data'),
                                //   // ),
                                // );
                                // Get.to(
                                //   HomePage(
                                //     name: register.userController.text,
                                //     email: register.emailController.text,
                                //   ),
                                // );
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return HomePage(
                                    name: register.userController.text,
                                    email: register.emailController.text,
                                  );
                                }));
                              } else {
                                print('Form is invalid');
                              }
                            },
                            child: Container(
                              width: 150,
                              height: 45,
                              decoration: contButton,
                              child: Center(
                                child: Text(
                                 translation(context).signup,
                                  style: logreg,
                                ),
                              ),
                            ),
                          ),
                          Dimanation.high10,
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               
                                
                                Text(
                                  translation(context).AlreadyHaveAccount,
                                  style: textregs,
                                ),
                                Dimanation.width8,
                                 InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                  translation(context).signin,
                                    style: regs,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Dimanation.high10,
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
