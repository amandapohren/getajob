import 'package:flutter/material.dart';


class CurriculoPage extends StatefulWidget {
  CurriculoPage({Key key}) : super(key: key);

  @override
  _CurriculoPageState createState() => _CurriculoPageState();
}

class _CurriculoPageState extends State<CurriculoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dicas de Currículos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: TextStyle(fontSize: 20, color: Colors.black),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '   Conheça dicas preciosas para montar um CV que irá se destacar e aumentar suas chances de ser chamado para a entrevista de emprego!',
                  ),
                  Divider(),
              const Text(
                '  O primeiro passo é buscar um equilíbrio: nem detalhes em excesso, nem informação de menos. Nem tão longo, nem tão curto. Usar a objetividade é o primeiro passo. Informações bem estruturadas ajudam a capturar de imediato o olho do seu futuro empregador.'
              ),
              Divider(),
              const Text(
                'Mas existem outros segredos que envolvem a confecção de um bom currículo. Vamos desvendá-los ponto a ponto a seguir!'
              ),
              Divider(),
              const Text(
                'Economize na quantidade de dados pessoais: Não precisa preencher o currículo com todos os tipos de dados pessoais. O possível empregador não precisa saber do seu RG, CPF, tampouco do nome dos seus pais antes mesmo de contratá-lo. Em vez disso, coloque apenas:Nome completo, E-mail, Telefone de contato, Endereço do seu perfil em redes profissionais, como o LinkedIn. '
              ),
                  Divider(),
                  const Text(
                    'Depois dos dados pessoais e antes da descrição de suas experiências e formação, é legal apresentar uma área de atuação bem definida, com bom destaque, usando poucas palavras. Essa informação deve comunicar, de maneira rápida e genérica, com o que você trabalha.'
                  ),
                  Divider(),
                  const Text(
                    'Faça um resumo das suas qualificações. Usando poucas palavras, faça um resumo das suas principais qualificações, descrevendo as áreas de atuação e seu papel em cada uma delas.'
                  ),
                 ],              ),
            ),
          ),
        ],
      )
    );

     }
}
