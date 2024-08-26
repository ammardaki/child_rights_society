import 'package:child_rights_society/Component/background_base.dart';
import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/screen/login.dart';
import 'package:child_rights_society/styles/dimnation.dart';
import 'package:child_rights_society/styles/textstyle.dart';
import 'package:child_rights_society/utiles/forgetprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Component/text_input_type.dart';
import '../styles/border.dart';
import '../styles/colors.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    final forget = Provider.of<Proforget>(context);
      return Form(
      key: forget.formKeyForget,
      autovalidateMode: AutovalidateMode.always,
      child: Stack(
        children: [
         backgroundbase(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return LoginPage();
                    }));
                  },
                  child: const Icon(Icons.arrow_back)),
              backgroundColor: clearColor,
              elevation: 0.0,
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  const Image(
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                    width: 200,
                    height: 250,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              translation(context).forgetpassword,
                              style: textregs,
                            ),
                            Dimanation.high10,
                            Text(
                              translation(context).enterphonenumber,
                              style: nameStyle(),
                            ),
                            Dimanation.high5,
                            TextInputSp(
                              controller: forget.fPhoneController,

                              textInputType: TextInputType.name,
                              mary: const EdgeInsets.all(10),
                              prif: const Icon(
                                Icons.phone,
                                color: iconColo,
                              ),
                              vali: forget.validateMobi,
                              // paddy: EdgeInsets.all(10.00),
                              commpadd: const EdgeInsets.all(10.0),
                              labely: Text(
                                translation(context).phonenumber,
                                style: b,
                              ),

                              inputAction: TextInputAction.next,
                            ),
                            Dimanation.high10,
                            Container(
                              width: 150,
                              height: 45,
                              decoration: contButton,
                              child: Center(
                                child: Text(translation(context).sendcode,
                                    style:  sendcode),
                              ),
                            ),
                            Dimanation.high10,
                            TextInputSp(
                              controller: forget.numbController,
                              textInputType: TextInputType.name,
                              mary: const EdgeInsets.all(10),
                              vali: forget.fvaliNumb,
                              commpadd: const EdgeInsets.all(10.0),
                              labely: Text(
                                translation(context).code,
                                style: b,
                              ),
                              inputAction: TextInputAction.next,
                            ),
                            Dimanation.high10,
                            TextInputSp(
                              controller: forget.fpassController,
                              textInputType: TextInputType.name,
                              mary: const EdgeInsets.all(10),
                              vali: forget.fvalidpass,
                              commpadd: const EdgeInsets.all(10.0),
                              obs: forget.fpass,
                              sufix: IconButton(
                                onPressed: () {
                                  forget.fshowPass();
                                },
                                icon: Icon(
                                  forget.fpass
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: iconColo,
                                ),
                              ),
                              labely: Text(
                                translation(context).setpassword,
                                style: b,
                              ),
                              inputAction: TextInputAction.next,
                            ),
                            Dimanation.high5,
                            TextInputSp(
                              controller: forget.fconpassController,
                              textInputType: TextInputType.name,
                              mary: const EdgeInsets.all(10),
                              vali: forget.fvalidConpass,
                              commpadd: const EdgeInsets.all(10.0),
                              obs: forget.fpass,
                              sufix: IconButton(
                                onPressed: () {
                                  forget.fshowPass();
                                },
                                icon: Icon(
                                  forget.fpass
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: iconColo,
                                ),
                              ),
                              labely: Text(
                                translation(context).confirmnewpassword,
                                style: b,
                              ),
                              inputAction: TextInputAction.next,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
