import 'package:flutter/material.dart';

import 'package:conversion_temperatura/clases/escala_celsius.dart';
import 'package:conversion_temperatura/clases/escala_fahrenheit.dart';
import 'package:conversion_temperatura/clases/escala_kelvin.dart';

class ConversorTemperatura extends StatefulWidget {
  const ConversorTemperatura({super.key});

  @override
  State<ConversorTemperatura> createState() => _ConversorTemperaturaState();
}

class _ConversorTemperaturaState extends State<ConversorTemperatura> {

//---------------------------------------------------------------------------------------//
  
  final _cFahrenheitController = TextEditingController();
  final _cKelvinController = TextEditingController();

  final _fCelsiusController = TextEditingController();
  final _fKelvinController = TextEditingController();

  final _kCelsiusController = TextEditingController();
  final _kFahrenheitController = TextEditingController();

//---------------------------------------------------------------------------------------//
  void _cfahrenheitMensaje(){
    ConversorCelsius cc = ConversorCelsius();
    
    final double celsius = double.parse(_cFahrenheitController.text);
    final double fahrenheit = cc.cFahrenheit(celsius);
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$celsius °C es igual a $fahrenheit °F')),);
  }

  void _ckelvinMensaje(){
    ConversorCelsius cc = ConversorCelsius();
    
    final double celsius = double.parse(_cKelvinController.text);
    final double kelvin = cc.cKelvin(celsius);
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$celsius °C es igual a $kelvin k')),);
  }
  
  void _fCelsiusMensaje(){
    
    ConversorFahrenheit cf = ConversorFahrenheit();
    
    final double fahrenheit = double.parse(_fCelsiusController.text);
    final double celsius = cf.fCelsius(fahrenheit);
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$fahrenheit °F es igual a $celsius °C')),);
  }
  
  void _fKelvinMensaje(){
    ConversorFahrenheit cf = ConversorFahrenheit();
    
    final double fahrenheit = double.parse(_fKelvinController.text);
    final double kelvin = cf.fKelvin(fahrenheit);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$fahrenheit °F es igual a $kelvin k')),);
  }
  
  void _kCelsiusMensaje(){
    ConversorKelvin ck = ConversorKelvin();
    
    final double kelvin= double.parse(_kCelsiusController.text);
    final double celsius = ck.kCelsius(kelvin);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$kelvin k es igual a $celsius °C')),);
  }
  
  void _kFahrenheitMensaje(){
    ConversorKelvin ck = ConversorKelvin();
    
    final double kelvin= double.parse(_kFahrenheitController.text);
    final double fahrenheit = ck.kFahrenheit(kelvin);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$kelvin k es igual a $fahrenheit °F')),);
  }

//---------------------------------------------------------------------------------------//

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Conversor de Escalas de Temperatura'),
          backgroundColor:const Color.fromARGB(255, 0, 83, 167),
          bottom: const TabBar(
            indicatorWeight: 10,      
            tabs: [
              Tab(child: Text('°C a °F')),
              Tab(child: Text('°C a k')),
              Tab(child: Text('°F a °C')),
              Tab(child: Text('°F a k')),
              Tab(child: Text('k a °C')),
              Tab(child: Text('k a °F')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container( margin: const EdgeInsets.fromLTRB(250, 0, 250, 0), child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _cFahrenheitController,
                  decoration: const InputDecoration(
                    labelText: 'Celsius',
                    hintText: '0',
                  ),
                  keyboardType: TextInputType.number,
                ),

                const SizedBox( height: 100.0,),

                ElevatedButton(onPressed: _cfahrenheitMensaje, child: const Text('Convertir'))
              ],
            ),
            ),

            Container( margin: const EdgeInsets.fromLTRB(250, 0, 250, 0), child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _cKelvinController,
                  decoration: const InputDecoration(
                    labelText: 'Celsius',
                    hintText: '0',
                  ),
                  keyboardType: TextInputType.number,
                ),

                const SizedBox( height: 100.0,),

                ElevatedButton(onPressed: _ckelvinMensaje, child: const Text('Convertir'))
              ],
            ),
            ),

            Container( margin: const EdgeInsets.fromLTRB(250, 0, 250, 0), child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _fCelsiusController,
                  decoration: const InputDecoration(
                    labelText: 'Farenheint',
                    hintText: '0',
                  ),
                  keyboardType: TextInputType.number,
                ),
                
                const SizedBox( height: 100.0,),

                ElevatedButton(onPressed: _fCelsiusMensaje, child: const Text('Convertir'))
              ],
            ),
            ),

            Container( margin: const EdgeInsets.fromLTRB(250, 0, 250, 0), child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _fKelvinController,
                  decoration: const InputDecoration(
                    labelText: 'Farenheint',
                    hintText: '0',
                  ),
                  keyboardType: TextInputType.number,
                ),
                
                const SizedBox( height: 100.0,),

                ElevatedButton(onPressed: _fKelvinMensaje, child: const Text('Convertir'))
              ],
            ),
            ),

            Container( margin: const EdgeInsets.fromLTRB(250, 0, 250, 0), child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _kCelsiusController,
                  decoration: const InputDecoration(
                    labelText: 'Kelvin',
                    hintText: '0',
                  ),
                  keyboardType: TextInputType.number,
                ),
                
                const SizedBox( height: 100.0,),

                ElevatedButton(onPressed: _kCelsiusMensaje, child: const Text('Convertir'))
              ],
            ),
            ),

            Container( margin: const EdgeInsets.fromLTRB(250, 0, 250, 0), child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _kFahrenheitController,
                  decoration: const InputDecoration(
                    labelText: 'Kelvin',
                    hintText: '0',
                  ),
                  keyboardType: TextInputType.number,
                ),
                
                const SizedBox( height: 100.0,),

                ElevatedButton(onPressed: _kFahrenheitMensaje, child: const Text('Convertir'))
              ],
            ),
            ),

          ],
        ),
      ),
    );
  }
}