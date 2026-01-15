import 'dart:io';

void main() {
  bool continua = true;

  print('--- Benvenuto nella Calcolatrice Dart ---');

  while (continua) {
    print('\nMENU PRINCIPALE:');
    print('1. Somma (+)');
    print('2. Sottrazione (-)');
    print('3. Moltiplicazione (*)');
    print('4. Divisione (/)');
    print('5. Esci');
    stdout.write('Scegli un\'opzione (1-5): ');

    String? scelta = stdin.readLineSync();

    if (scelta == '5') {
      continua = false;
      print('Grazie per aver usato la calcolatrice. Arrivederci!');
      break;
    }

    // Se l'utente non ha scelto di uscire, procediamo con i numeri
    stdout.write('Inserisci il primo numero: ');
    double? n1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Inserisci il secondo numero: ');
    double? n2 = double.tryParse(stdin.readLineSync() ?? '');

    if (n1 == null || n2 == null) {
      print('Errore: Inserisci numeri validi.');
      continue;
    }

    switch (scelta) {
      case '1':
        print('Risultato: $n1 + $n2 = ${n1 + n2}');
        break;
      case '2':
        print('Risultato: $n1 - $n2 = ${n1 - n2}');
        break;
      case '3':
        print('Risultato: $n1 * $n2 = ${n1 * n2}');
        break;
      case '4':
        if (n2 == 0) {
          print('Errore: Impossibile dividere per zero.');
        } else {
          print('Risultato: $n1 / $n2 = ${n1 / n2}');
        }
        break;
      default:
        print('Opzione non valida, riprova.');
    }
  }
}