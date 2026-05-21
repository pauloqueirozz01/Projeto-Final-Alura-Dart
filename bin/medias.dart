import 'dart:io';

void main() {
  // Map<String, List<double>> boletim = {
  //   "Ana": [10, 9, 8],
  //   "Carlos": [1, 9, 7],
  //   "João": [2, 9.25, 5.5],
  // };
  List<String> names = [];
  List<double> notes = [];
  header();
  getCommand();
}

void addStudent(List<String> names) {
  print("Digite o nome do aluno:");
  String name = stdin.readLineSync()!;

  if (name != "") {}
}

String getCommand() {
  print("");
  print(
    "Digite um comando: 1 - Adicionar Aluno, 2 - Adicionar nota do aluno, 3 - Adicionar nome e nota do aluno, 4 - Sair",
  );
  List<String> commands = <String>["1", "2", "3", "4"];
  String? input = stdin.readLineSync();

  if (input == null && !commands.contains(input)) {
    print("Comando inválido");
    getCommand();
  }
  return input!;
}

void addNamesOfStudents(List<String> names, List<List<double>> notes) {
  print("Digite o nome do aluno:");
  String? name = stdin.readLineSync();

  if (name != null) {
    names.add(name);
    List<double> notesOfStudent = [];

    while (true) {
      print("Digite uma nota para o aluno (ou ***fim*** para terminar)");
      String? input = stdin.readLineSync();

      if (input != null && input.isNotEmpty) {
        double? nota = double.parse(input);
        notes.add(notesOfStudent);
      } else if ( input == null || input.isEmpty ){
        print("Entrada inválida. Tente novamente");
      }
      }
    }
    notes.add(notesOfStudent)x ;
  } else {
    print("Nome inválido");
  }
  return;
}

void menu() {
  print("");
  header();
  print("");
  String command = getCommand();
  print("");

  switch (command) {
    case "1":
      addNamesOfStudents(names, notes);
      break;
    case "2":
      break;
    case "3":
      break;
  }
}

void header() {
  print(
    "          _____                    _____                    _____                    _____                    _____          ",
  );
  print(
    "         /\\    \\                  /\\    \\                  /\\    \\                  /\\    \\                  /\\    \\         ",
  );
  print(
    "        /::\\____\\                /::\\    \\                /::\\    \\                /::\\    \\                /::\\    \\        ",
  );
  print(
    "       /::::|   |               /::::\\    \\              /::::\\    \\               \\:::\\    \\              /::::\\    \\       ",
  );
  print(
    "      /:::::|   |              /::::::\\    \\            /::::::\\    \\               \\:::\\    \\            /::::::\\    \\      ",
  );
  print(
    "     /::::::|   |             /:::/\\:::\\    \\          /:::/\\:::\\    \\               \\:::\\    \\          /:::/\\:::\\    \\     ",
  );
  print(
    "    /:::/|::|   |            /:::/__\\:::\\    \\        /:::/  \\:::\\    \\               \\:::\\    \\        /:::/__\\:::\\    \\    ",
  );
  print(
    "   /:::/ |::|   |           /::::\\   \\:::\\    \\      /:::/    \\:::\\    \\              /::::\\    \\      /::::\\   \\:::\\    \\   ",
  );
  print(
    "  /:::/  |::|___|______    /::::::\\   \\:::\\    \\    /:::/    / \\:::\\    \\    ____    /::::::\\    \\    /::::::\\   \\:::\\    \\  ",
  );
  print(
    " /:::/   |::::::::\\    \\  /:::/\\:::\\   \\:::\\    \\  /:::/    /   \\:::\\ ___\\  /\\   \\  /:::/\\:::\\    \\  /:::/\\:::\\   \\:::\\    \\ ",
  );
  print(
    "/    |:::::::::\\____\\/:::/__\\:::\\   \\:::\\____\\/:::/____/     \\:::|    |/::\\   \\/:::/  \\:::\\____\\/:::/  \\:::\\   \\:::\\____\\/:::",
  );
  print(
    "/    / ~~~~~/:::/    /\\:::\\   \\:::\\   \\::/    /\\:::\\    \\     /:::|____|\\:::\\  /:::/    \\::/    /\\::/    \\:::\\  /:::/    /\\::",
  );
  print(
    " \\/____/      /:::/    /  \\:::\\   \\:::\\   \\/____/  \\:::\\    \\   /:::/    /  \\:::\\/:::/    / \\/____/  \\/____/ \\:::\\/:::/    / ",
  );
  print(
    "             /:::/    /    \\:::\\   \\:::\\    \\       \\:::\\    \\ /:::/    /    \\::::::/    /                    \\::::::/    /  ",
  );
  print(
    "            /:::/    /      \\:::\\   \\:::\\____\\       \\:::\\    /:::/    /      \\::::/____/                      \\::::/    /   ",
  );
  print(
    "           /:::/    /        \\:::\\   \\::/    /        \\:::\\  /:::/    /        \\:::\\    \\                      /:::/    /    ",
  );
  print(
    "          /:::/    /          \\:::\\   \\/____/          \\:::\\/:::/    /          \\:::\\    \\                    /:::/    /     ",
  );
  print(
    "         /:::/    /            \\:::\\    \\               \\::::::/    /            \\:::\\    \\                  /:::/    /      ",
  );
  print(
    "        /:::/    /              \\:::\\____\\               \\::::/    /              \\:::\\____\\                /:::/    /       ",
  );
  print(
    "        \\::/    /                \\::/    /                \\::/____/                \\::/    /                \\::/    /        ",
  );
  print(
    "         \\/____/                  \\/____/                  ~~                       \\/____/                  \\/____/         ",
  );
  print(
    "                                                                                                                             ",
  );
}
