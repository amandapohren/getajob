import 'package:flutter/material.dart';


class Vaga01Page extends StatefulWidget {
  Vaga01Page({Key key}) : super(key: key);

  @override
  _Vaga01PageState createState() => _Vaga01PageState();
}

class _Vaga01PageState extends State<Vaga01Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Vaga"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: TextStyle(fontSize: 19, color: Colors.black),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Analista de Infraestrutura de TI  - Canoas- RS',
                    ),
                    Divider(),
                    const Text(
                      '     2.600,00 a 2.650,00 (Bruto mensal). Período Integral Efetivo – CLT'
                    ),
                    Divider(),
                    const Text(
                        'Descrição'
                    ),
                    Divider(),
                    const Text(
                        'Área e especialização profissional: Informática, TI, Telecomunicações - Infraestrutura.'
                    ),
                    Divider(),
                    const Text(
                        'Nível hierárquico: Analista'
                    ),
                    Divider(),
                    const Text(
                        'Prestar suporte técnico em servidores, além de usuários. Realizar, manter e verificar cópias de segurança.Garantir que os servidores estejam disponíveis, operacionais e seguros. Realizar manutenção emergencial, auxiliar nas corretivas e preventivas. Administrar e otimizar os ativos e serviços.Implementar e garantir o uso de políticas de segurança. Garantir que as atualizações sejam executadas e controladas.'
                    ),
                    Divider(),
                    const Text(
                        'Exigências'
                    ),
                    Divider(),
                    const Text(
                        'Escolaridade Mínima: Ensino Superior'
                    ),
                    Divider(),
                    const Text(
                        'Benefícios adicionais'
                    ),
                    Divider(),
                    const Text(
                        'Assistência médica, Assistência odontológica, Auxílio creche, Auxílio Educação, Auxílio farmácia, Participação nos lucros, Seguro de Vida, Vale-refeição, Vale-transporte.'
                    ),
                    ElevatedButton(
                        child: const Text('Candidate-se para mais informações', style: TextStyle(fontSize: 20.0),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Vaga01Page()),
                          );
                        }
                    ),
                  ],              ),
              ),
            ),
          ],
        )
    );

  }
}