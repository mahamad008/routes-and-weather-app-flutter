import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:weather/weather.dart';
class Serach extends StatefulWidget {
  const Serach({Key ?key}):super(key: key);

  @override
  State<Serach> createState() => _SerachState();
}

class _SerachState extends State<Serach> {
  Weather ?weather;
  bool isLoading=false;
  final openWeather=WeatherFactory('531d469ed870027757eed225d87321cf');
  String CistyName='';
  getWeather() async{
    try {
      isLoading=true;
      setState(() {
        
      });
      weather=await openWeather.currentWeatherByCityName(CistyName);
      isLoading=false;
      setState(() {
        
      });
    } catch (e) {
      print('errors was foand so please correct them $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: const Text('Search by city Name'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Column(
          children: [
              Container(
                margin: EdgeInsets.all(22.0),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      CistyName=value;
                    });
                  
                  },
                  decoration: InputDecoration(
                    hintText: 'Search any city in the world',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
suffixIcon: IconButton(onPressed: (){getWeather();}, icon: Icon(Icons.search))
                  ),
                ),
              ),
              Expanded(
                child: weather !=null
                 ?Column(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Text('${weather!.temperature!.celsius!.round()} 0c',style: const TextStyle(fontSize: 55.0),),
              Text('${weather!.weatherDescription}')
              
              ]
              ):const SizedBox())
          ],
        ),
      ),
    );
  }
}