import 'dart:math';

import 'package:flutter/material.dart';


class Usuario extends StatelessWidget {
  const Usuario({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Usuario(),
    );
  }
}

class Usuarioo extends StatefulWidget {
  const Usuarioo({super.key});

  @override
  State<Usuarioo> createState() => _HomePageState();
}

class _HomePageState extends State<Usuarioo> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela(){
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "informe seus dados";
    });
  }
  void _cadastrar(){
    usuarioController.text = "";
    senhaController.text = "";

    String user = usuarioController.text;
    String senha = senhaController.text;
    if(user.isEmpty || senha.isEmpty){
      _textoInfo = "Erro ao cadastrar usario";    }
    else {
      _textoInfo = "Usuario cadastrado com sucesso!";
    }
    setState(() {

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catastro de usuario"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              const Icon(
                Icons.person_outline,
                size: 120.0,
                color: Colors.lightBlueAccent,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Usuario",
                    labelStyle: TextStyle(color: Colors.blue)
                ),

                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
                controller: usuarioController,
              ),

              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Senha ",
                    labelStyle: TextStyle(color: Colors.blue)
                ),

                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
                controller: senhaController,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: _cadastrar,
                      child: const Text("Cadastrar")
                  ),
                ),
              ),
              Text(
                _textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.0
                ),
              )
            ],
          )
      ),
    );
  }
}


