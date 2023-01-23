import 'package:flutter/material.dart';
import 'package:racha_conta_app/widgets/custom_app_bar_widget.dart';
import 'package:racha_conta_app/widgets/custom_slider_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController contaController = TextEditingController();
  TextEditingController qtdPessoasController = TextEditingController();
  double val = 0.0;
  double valorSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Racha Conta app',
        background: Colors.transparent,
        titleColor: Color(0xff24465E),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/wallet.png',
                  height: 200,
                  alignment: Alignment.topRight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: const Text(
                      'Total da conta:',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff24465E),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      width: MediaQuery.of(context).size.width,
                      height: 30.0,
                      //color: Colors.blueGrey,
                      child: TextFormField(
                        controller: contaController,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff24465E),
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: const InputDecoration(
                          prefixText: 'R\$ ',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                bottom: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: const Text(
                      'Taxa de Serviço',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff24465E),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        width: MediaQuery.of(context).size.width,
                        height: 30.0,
                        child: CustomSliderWidget(
                          child: Slider(
                            min: 0,
                            max: 100,
                            divisions: 20,
                            value: val,
                            label: val.round().toString(),
                            onChanged: (value) {
                              setState(() {
                                val = value;
                                valorSlider = value;
                              });
                            },
                          ),
                        )),
                  ),
                  Container(
                    width: 50,
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      '${valorSlider.round()}%',
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff24465E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: const Text(
                      'Quantidade de pessoas:',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff24465E),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      width: MediaQuery.of(context).size.width,
                      height: 30.0,
                      //color: Colors.blueGrey,
                      child: TextFormField(
                        controller: qtdPessoasController,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff24465E),
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: const InputDecoration(
                          suffixText: 'Pessoas',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30.0,
                left: 100.0,
                right: 100.0,
              ),
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(
                    side: BorderSide.none,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Calcular',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
