//se creanmini providers
/*
riverpod  Se usa para mantener y compartir el estado (como variables o datos) entre diferentes partes de la app
, sin necesidad de usar setState() en widgets.

Un StateProvider es una clase de Riverpod que se usa cuando quieres exponer una variable sencilla con estado mutable, 
como un int, String, bool, etc. Es ideal para casos simples, como contadores, banderas de visibilidad, o texto editable.

 */
//statte provider es un provedor de un estado

import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 5); //	Maneja un valor que puede cambiar
