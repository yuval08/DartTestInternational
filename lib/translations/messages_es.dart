// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static m0(name) => "Hello ${name}!";

  static m1(userName, userGender) => "${Intl.gender(userGender, female: '${userName} no está disponible porque no está en línea.', male: '${userName} no está disponible porque no está en línea.', other: '${userName} no está disponible porque no están en línea')}";

  static m2(howMany, userName) => "${Intl.plural(howMany, zero: 'No quedan correos electrónicos para ${userName} .', one: 'Queda ${howMany} correo electrónico para ${userName} .', other: 'Quedan ${howMany} correos electrónicos para ${userName} .')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "Continue:" : MessageLookupByLibrary.simpleMessage("Continuar:"),
    "English" : MessageLookupByLibrary.simpleMessage("Ingles"),
    "Greeting:" : MessageLookupByLibrary.simpleMessage("Saludos:"),
    "Name" : MessageLookupByLibrary.simpleMessage("Nombre"),
    "New Message:" : MessageLookupByLibrary.simpleMessage("Nuevo Mensaje:"),
    "Not Online Female:" : MessageLookupByLibrary.simpleMessage("Femenino Fuera de Linea:"),
    "Not Online Male:" : MessageLookupByLibrary.simpleMessage("Masculino Fuera de Linea:"),
    "Not Online Other:" : MessageLookupByLibrary.simpleMessage("Otros Fuera de Linea:"),
    "Remaining Emails Many:" : MessageLookupByLibrary.simpleMessage("Quedan muchos correos:"),
    "Remaining Emails One:" : MessageLookupByLibrary.simpleMessage("Queda 1 correo:"),
    "Remaining Emails Zero:" : MessageLookupByLibrary.simpleMessage("Quedan 0 correos:"),
    "Spanish" : MessageLookupByLibrary.simpleMessage("Español"),
    "continueMessage" : MessageLookupByLibrary.simpleMessage("Presione cualquier tecla para continuar"),
    "greetingMessage" : m0,
    "newMessage" : MessageLookupByLibrary.simpleMessage("Este es un mensaje de prueba"),
    "notOnlineMessage" : m1,
    "remainingEmailsMessage" : m2
  };
}
