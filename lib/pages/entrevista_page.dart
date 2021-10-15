import 'package:flutter/material.dart';


class EntrevistaPage extends StatefulWidget {
  EntrevistaPage({Key key}) : super(key: key);

  @override
  _EntrevistaPageState createState() => _EntrevistaPageState();
}

class _EntrevistaPageState extends State<EntrevistaPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dicas de Entrevistas"),
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
                    const Text(
                      '5 dicas para mandar bem na entrevista de emprego (e conseguir a vaga!)',
                    ),
                    Divider(),
                    const Text(
                        '1. Preparação começa com o currículo.  Para se sair bem em uma entrevista, a preparação, de acordo com os especialistas, começa ao escrever o currículo. O documento serve como fio condutor dos principais pontos que serão abordados na conversa com o recrutador.'
                    ),
                    Divider(),
                    const Text(
                        '2. Sentir-se confiante faz diferença.  Segundo descobertas da ciência, quem se sente confiante em uma entrevista de emprego costuma ter melhor desempenho.'
                    ),
                    Divider(),
                    const Text(
                    '3. Primeiras impressões importam (e muito).  “A primeira impressão é a que fica” não é um ditado sem fundamento. Pelo contrário, a ciência comprovou esse fato em diversos estudos. A Time vai mais longe e afirma que alguns estudiosos consideram esse o ponto mais importante das entrevistas.'
                    ),
                    Divider(),
                    const Text(
                        '4. “Imite” o estilo do entrevistador. Essa dica para mandar bem na entrevista pode parecer estranha, mas tem fundamento. A ciência já linkou, diversas vezes, que a similaridade tem papel forte no quanto “agradamos” alguém. Não é diferente nos processos seletivos.'
                    ),
                    Divider(),
                    const Text(
                        '5. Pesquise informações sobre a empresa e o cargo. “De uma forma geral, os executivos não se preparam para as entrevistas de emprego”, diz a coach Mariella Gallo. Saber o que se espera do profissional que ocupe aquela posição é essencial para ter “ ponta da língua” a razão pela qual você pode ser a pessoa certa para o cargo. Nesse ponto vale desde conversar com pessoas que já trabalhem na empresa, como até visitar o local e se apresentar como candidato, segundo Kaghofer..'
                    ),
                  ],              ),
              ),
            ),
          ],
        )
    );

  }
}
