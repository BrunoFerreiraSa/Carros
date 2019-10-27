
import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page, {bool replace = false}) {

  /*Navigator.push empilha as telas: dando a opção de voltar
  Navigator.pushReplacement destroi a tela anterior*/

  if(replace){
    return Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));

}
