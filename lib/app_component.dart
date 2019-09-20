import 'dart:html';

import 'package:angular/angular.dart';
import 'package:intl/intl.dart';
@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [],
)
class AppComponent {
  void setLocale(String locale) {
    document.cookie = 'set-locale=' + locale;
    window.location.reload();
  }
  String get continueMessage => Intl.message('Hit any key to continue', name: 'continueMessage', args: [], desc: 'Explained that we will not proceed further until the user presses a key');

  String get newMessage => Intl.message('This is a new message test', name: 'newMessage', args: [], desc: 'This is a new message description');

  String greetingMessage(name) => Intl.message('Hello $name!', name: 'greetingMessage', args: [name], desc: 'Greet the user as they first open the application', examples: const {'name': 'Emily'});

  String remainingEmailsMessage(int howMany, String userName) => Intl.plural(howMany,
      zero: 'There are no emails left for $userName.',
      one: 'There is $howMany email left for $userName.',
      other: 'There are $howMany emails left for $userName.',
      name: 'remainingEmailsMessage',
      args: [howMany, userName],
      desc: 'How many emails remain after archiving.',
      examples: const {'howMany': 42, 'userName': 'Fred'});

  notOnlineMessage(String userName, String userGender) => Intl.gender(userGender,
      male: '$userName is unavailable because he is not online.',
      female: '$userName is unavailable because she is not online.',
      other: '$userName is unavailable because they are not online',
      name: 'notOnlineMessage',
      args: [userName, userGender],
      desc: 'The user is not available to hangout.',
      examples: const {'userGender': 'female', 'userName': 'Alice'});
}
