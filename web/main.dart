import 'dart:html';
import 'package:TestInternational/translations/messages_all.dart';
import 'package:angular/angular.dart';
import 'package:TestInternational/app_component.template.dart' as ng;
import 'package:intl/intl.dart';
import 'package:intl/intl_browser.dart';

void main() async {
  String locale;
  if (document.cookie != null && document.cookie.contains('set-locale')){
    var arr = document.cookie.split('; ');
    for (var cookie in arr) {
      var data = cookie.split('=');
      if (data[0] == 'set-locale') {
        locale = data[1];
        break;
      }
    }
  }
  if (locale == null) locale = await findSystemLocale();
  Intl.defaultLocale = locale;
  await initializeMessages(locale);
  runApp(ng.AppComponentNgFactory);
}
