import 'package:flutter/material.dart';
import 'package:uts_pcs_fauzi/home.dart';
import 'package:uts_pcs_fauzi/pesanansaya.dart';
import 'package:uts_pcs_fauzi/bayar.dart';
import 'package:uts_pcs_fauzi/layanan.dart';
import 'package:uts_pcs_fauzi/menu_layanan/mobilavanza.dart';
import 'package:uts_pcs_fauzi/menu_layanan/mobilsedan.dart';
import 'package:uts_pcs_fauzi/menu_layanan/mobilsuv.dart';
import 'package:uts_pcs_fauzi/menu_layanan/mobilsport.dart';
import 'package:uts_pcs_fauzi/OrderHistoryScreen.dart';
import 'package:uts_pcs_fauzi/konsultasiScreen.dart';

import 'menu layanan/mobilavanza.dart';
import 'menu layanan/mobilsedan.dart';
import 'menu layanan/mobilsport.dart';
import 'menu layanan/mobilsuv.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case '/':
        return MaterialPageRoute(builder: (_) => home());
        
      case '/pesanansaya':
        return MaterialPageRoute(builder: (_) => PesananSaya());

      case '/bayar':
        return MaterialPageRoute(builder: (_) => Bayar());

      case '/layanan':
          return MaterialPageRoute(builder: (_) => LayananScreen());

      case '/mobil sedan':
          return MaterialPageRoute(builder: (_) => MobilsedanScreen());


      case '/Mobilavanza':
          return MaterialPageRoute(builder: (_) => MobilavanzaScreen());

      case '/Mobil SUV':
          return MaterialPageRoute(builder: (_) => MobilsuvScreen());


      case '/Mobil-Sport':
          return MaterialPageRoute(builder: (_) => MobilsportScreen());

    case '/orderhistoryscreen':
          return MaterialPageRoute(builder: (_) => OrderHistoryScreen());

   case '/konsultasi':
          return MaterialPageRoute(builder: (_) => konsultasiScreen());

    default:
          return _errorRoute();  
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center( child: Text('Halaman Eror')),
      );
    });
  }
}