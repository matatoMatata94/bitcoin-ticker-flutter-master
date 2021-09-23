import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const myKey = 'BDE969B4-E525-4DD0-9C31-0775A1A40FCE';
const url = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=$myKey';

class CoinData {
  Future<void> getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      var rate = jsonDecode(data)['rate'];
      print(rate);
    } else {
      print(response.statusCode);
    }
  }
}
