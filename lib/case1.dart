import 'dart:io';

void main() {
  stdout.writeln("Mencari Volume Balok");
  stdout.writeln("====================");

  stdout.write("Masukkan Panjang Balok (m): ");
  int inputPanjang = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Masukkan Lebar Balok (m): ");
  int inputLebar = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Masukkan Tinggi Balok (m): ");
  int inputTinggi = int.parse(stdin.readLineSync() ?? '0');

  var hasilHitung = volumeBalok(inputPanjang, inputLebar, inputTinggi);

  stdout.writeln("Volume Balok (m3) = $hasilHitung");
}

volumeBalok(inputPanjang, inputLebar, inputTinggi) {
  return inputPanjang * inputLebar * inputTinggi;
}

// https://stackoverflow.com/questions/68153886/how-to-read-an-integer-input-from-the-user-input-in-dart