import 'dart:io';
import 'package:dart_basics/IceCream';

void main(List<String> arguments) {
}

/*
+-------------------------------------+
|           VARIABLES                 |
+-------------------------------------+
*/

void greetings(String name) {
  var age = 23;
  var example = 41.3;

  print("Hola $name.");
}

void valuesExample() {
  // Tipos fijos
  final String example2 = "dimas";
  const String example3 = "dimas";
}

void numbersExample() {
  // Variables numéricas
  int age = 23;

  double age2 = 23.6;
  double age3 = 23;

  num age4 = 12;
  num age5 = 12.1;
  age5 = 1;
}

void stringExamples() {
  // Variables de cadena de texto
  String name = 'DimasDev';
  name = 'montalvo';

  String currentAge = "23 años";

  // String fullText = name + currentAge;
  String fullText = "soy $name y tengo $currentAge";

  print(fullText);
}

void dynamicExample() {
  // Tipo dinámico
  dynamic example = "Hola soy un ejemplo";

  print(example);

  example = 23;

  print(example);
}

/*
+-------------------------------------+
|           CONVERSIONES              |
+-------------------------------------+
*/

void parseExample() {
  // Conversiones
  String toNumber = "23";
  int numberOk = int.parse(toNumber);

  print("el numero es $numberOk");

  int numberToString = 615;
  String stringOk = numberToString.toString();

  print(stringOk);

  String toDouble = "34.23";
  double doubleOk = double.parse(toDouble);

  print(doubleOk);
}

/*
+-------------------------------------+
|       OPERACIONES MATEMÁTICAS       |
+-------------------------------------+
*/

void mathExamples() {
  // Operaciones matemáticas
  int a = 2;
  int b = 4;

  // int result = a + b; Suma
  // int result = a - b; Resta
  // int result = a * b; Multiplicación
  // double result = a / b; División
  // int result = a ~/ b; División sin decimal
  // int result = a % b; Módulo

  // a += b; Suma
  // a -= b; Resta
  // a *= b; Multiplicación

  // a++;
  // a--;

  print("resultado es: ${++a}");
}

/*
+-------------------------------------+
|           CONDICIONALES             |
+-------------------------------------+
*/

void ifExamples() {
  int userAge = 18;

  if (userAge >= 18) {
    print("eres ruko");
  } else {
    print("eres chamako");
  }

  String ageResult = (userAge >= 18) ? "eres rukon" : "eres chamako";

  int experienceYears = 2;

  if (experienceYears > 8) {
    print("eres sinior");
  } else if (experienceYears >= 5) {
    print("eres mid");
  } else {
    print("eres pendejo");
  }

  print("introduce el dia de la semana");
  int numberOfTheWeek = int.parse(stdin.readLineSync()!);

  if (numberOfTheWeek == 1) {
    print("lunes");
  } else if (numberOfTheWeek == 2) {
    print("martes");
  } else if (numberOfTheWeek == 3) {
    print("miercoles");
  } else if (numberOfTheWeek == 4) {
    print("jueves");
  } else if (numberOfTheWeek == 5) {
    print("viernes");
  } else if (numberOfTheWeek == 6) {
    print("sabadiuk");
  } else if (numberOfTheWeek == 7) {
    print("domingazo");
  } else {
    print("El numero es invalido");
  }
}

void switchExamples() {
  print("introduce el dia de la semana");
  int numberOfTheWeek = int.parse(stdin.readLineSync()!);

  switch (numberOfTheWeek) {
    case 1:
      print("lunes");
      break;
    case 2:
      print("martes");
      break;
    case 3:
      print("miercoles");
      break;
    case 4:
      print("jueves");
      break;
    case 5:
      print("viernes");
      break;
    case 6:
      print("sabado");
      break;
    case 7:
      print("domingo");
      break;
    default:
      print("numero invalido");
      break;
  }
}

/*
+-------------------------------------+
|           Métodos                    |
+-------------------------------------+
*/

void simpleFunction() {
  print("Esto es un ejemplo");
}

void inputFunction(int a, int b) {
  int result = a + b;
  print("el resultado es $result: ");
}

int outputFunction() {
  int a = 5;
  int b = 3;
  return a + b;
}

int completeFunction(int a, int b) {
  return a + b;
}

int completeFunction2(int a, int b) => a + b;

void optionalFunction({String name = "desconocido", int age = -1}) {
  print("eres $name y tienes $age");
}

void optionalFunction2(String name, [int age = -1]) {
  print("eres $name y tienes $age");
}

/*
+-------------------------------------+
|             ESTRUCTURAS DE DATOS    |
+-------------------------------------+
*/

void listExamples() {
  List<String> names = ["dimas", "vianney", "Manolo"];
  var names2 = ["alfonso", "Manolo", "Aanna"];
  // print(names[9]);
  // print(names.last);
  // print(names.first);
  // print(names.length);
  // print(names[names.length-1]);
  // names[2] = "sabak";
  names.insert(1, "suegro");
  // names.add("Magishula");
  names.addAll(names2);
  // names.remove("Manolo");
  // names.removeAt(1);
  // names.clear();
  print(names);
}

void setExamples() {
  Set<String> names = {"Dimas", "pepe"};
  Set<String> names2 = {"Dimas", "pepe"};
  names.add("Dimas");
  names.add("dimas");
  names.add("Bimbo");
  names.remove("dimas");
  // names.clear();
  // names.removeAll(names2);
  bool result = names.contains("Dimas");
  if (result) {
    print("Dimas está invitado");
  } else {
    print("Dimas NO está invitado");
  }
  print(names.length);
  List<String> newNames = ["Dimas", "Dimas", "Juan"];
  Set<String> newNameSet = Set.from(newNames);
  print(newNameSet);
}

void mapExamples() {
  Map<String, int> people = {"Dimas": 23, "Pepe": 64, "MoureDev": 120};
  people["Dimas"] = 76;
  people.addAll({"David": 44, "Miguel": 22});
  people["Pikachu"] = 76;
  people.remove("Pikachu");
  people.containsKey("Dimas");
  people.containsValue(23);
  people.length;
  people.clear();
  print(people.values);
}

void listLoop() {
  List<int> numbers = [2, 4, 6, 8, 9, 5];

  // for (var i = 0; i < numbers.length; i++) {
  //   print("Con el for básico tenemos: ${numbers[i]}");
  // }

  // for (var pepe in numbers) {
  //   print("Con el for numero 2 tengo $pepe");
  // }

  numbers.forEach((item) {
    print("el numero es $item");
  });

  numbers.forEach(print);
}

void setLoop() {
  Set<int> numbers = {3, 4, 6, 8, 5};

  for (var element in numbers) {
    print("EL SET: $element");
  }

  numbers.forEach((item) {
    print("el numero es $item");
  });

  numbers.forEach(print);
}

void mapLoop() {
  Map<String, int> numbers = {"favNumber": 13, "birthday": 18, "address": 34};

  // for (var element in numbers.entries) {
  //   print("la clave es ${element.key} y el valor es ${element.value}");
  // }
  numbers.forEach((key, value) {
    print("la clave es $key y el valor $value");
  });
}

/*
+-------------------------------------+
|             EJERCICIOS              |
+-------------------------------------+
*/

void exercise1() {
  /*
    📌 EJERCICIO 1: CALCULADORA DE EDAD

    ✅ Objetivo:
    Escribe un programa en Dart que pida al usuario su año de nacimiento
    y calcule su edad actual.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario su año de nacimiento (leerlo como String).
    2️⃣ Convertir el año de nacimiento a un número entero.
    3️⃣ Calcular la edad restando el año de nacimiento al año actual.
    4️⃣ Mostrar el resultado.
  */

  print("Introduce tu año de nacimiento:");

  String date = stdin.readLineSync()!;

  const int currentYear = 2026;

  int formatDate = int.parse(date);

  int result = currentYear - formatDate;

  print("tienes $result años");
}

void exercise2() {
  /*
    📌 EJERCICIO 2: CALCULADORA DE PROPINA

    ✅ Objetivo:
    Escribe un programa en Dart que calcule cuánto debe pagar cada persona
    después de dividir la cuenta y agregar una propina.
  */

  double totalPrice = 29.99;
  double tip = 20;
  int numberOfPeople = 2;

  double priceWithTip = (totalPrice * (tip / 100)) + totalPrice;

  String priceResult = (priceWithTip / numberOfPeople).toStringAsFixed(2);

  print(
    "El precio total con propina es de "
    "${priceWithTip.toStringAsFixed(2)} dolares. "
    "El total a pagar es de $priceResult",
  );
}

void exercise3() {
  /*
    📌 EJERCICIO 3: IDENTIFICAR NÚMEROS POSITIVOS Y NEGATIVOS
  */

  print("ingresa un numero");

  int userNumber = int.parse(stdin.readLineSync()!);

  if (userNumber > 0) {
    print("Es positivo");
  } else if (userNumber < 0) {
    print("negativo");
  } else {
    print("es 0");
  }
}

void exercise4() {
  /*
    📌 EJERCICIO 4: MESES DEL AÑO
  */

  print("introduce un numero del 1 al 12");

  int numberOfMonth = int.parse(stdin.readLineSync()!);

  switch (numberOfMonth) {
    case 1:
      print("Enero");
      break;
    case 2:
      print("febrero");
      break;
    case 3:
      print("Marzo");
      break;
    case 4:
      print("Abril");
      break;
    case 5:
      print("el mas vergas");
      break;
    case 6:
      print("junio");
      break;
    case 7:
      print("julio");
      break;
    case 8:
      print("agosto");
      break;
    case 9:
      print("septiembre");
      break;
    case 10:
      print("octubre");
      break;
    case 11:
      print("noviembre");
      break;
    case 12:
      print("diciembre");
      break;
    default:
      print("invalid");
      break;
  }
}

//Si aun numero le hacemos %2 == 0 es par.

void exercise5() {
    /*
    📌 EJERCICIO 5: SUMA DE NÚMEROS PARES EN UNA LISTA

    ✅ Objetivo:
    Escribe un programa en Dart que tome una lista de números enteros 
    y calcule la suma de todos los números pares en la lista.

    🔹 Ejemplo:
    Entrada: [1, 2, 3, 4, 5, 6]
    Salida: La suma de los números pares es: 12

    TIP Si a un número le hacemos %2 == 0 es par.
  */
  var example = [2, 5, 6, 7, 8];
  int result = 0;
  for (int number in example) {
    if (number %2 == 0){
      result += number;
    }
  }
  print("el resultado es $result");
}

void exercise6() {
  /*
    📌 EJERCICIO 6: FILTRAR PALABRAS ÚNICAS EN UN SET

    ✅ Objetivo:
    Escribe un programa en Dart que reciba una lista de palabras con 
    algunas repetidas y almacene solo las palabras únicas en un Set. 
    Luego, muestra el conjunto resultante.

    🔹 Ejemplo:
    Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
    Salida: {dart, flutter, codigo, movil}
*/
  List<String> words = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];
  Set<String> result = {};

  for (var element in words) {
    result.add(element);
  }

  var exampe = Set.from(words);

  print(result);
}

void exercise7() {
  /*
    📌 EJERCICIO 7: CONTAR LA FRECUENCIA DE PALABRAS EN UN MAP

    ✅ Objetivo:
    Escribe un programa en Dart que reciba una lista de palabras y cuente cuántas 
    veces aparece cada una, almacenando el resultado en un Map.

    🔹 Ejemplo:
    Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"]
    Salida: {dart: 3, flutter: 2, codigo: 1, movil: 1}
*/

  List<String> words = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
    "dart",
  ];
  Map<String, int> result = {};

  for (var element in words) {
    if (result.containsKey(element)) {
      result[element] = result[element]! + 1;
    } else {
      result[element] = 1;
    }
  }
}
