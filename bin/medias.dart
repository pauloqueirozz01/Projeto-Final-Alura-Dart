import 'dart:io';

void main() {
  // Map<String, List<double>> boletim = {
  //   "Ana": [10, 9, 8],
  //   "Carlos": [1, 9, 7],
  //   "João": [2, 9.25, 5.5],
  // };
  List<String> names = [];
  List<List<double>> notes = [];
  String? command;

  while (command != 'sair') {
    print('Escolha uma ação: registrar, listar, sair');
    command = getCommand();

    switch (command) {
      case 'registrar':
        addNamesOfStudents(names, notes);
        break;
      case 'listar':
        listStudentsAndMedias(names, notes);
        break;
      case 'sair':
        print('Saindo...');
        break;
      default:
        print('Ação inválida.');
    }
  }

  header();
  getCommand();
}

String getCommand() {
  print("");
  print("Escolha uma ação: registrar, listar, sair");
  List<String> commands = <String>["1", "2", "3", "4"];
  String? input = stdin.readLineSync();

  if (input == null && !commands.contains(input)) {
    print("Comando inválido");
    getCommand();
  }
  return input!;
}

double calculateMedia(List<double> notes) {
  double soma = 0;
  for (var note in notes) {
    soma += note;
  }
  return soma / notes.length;
}

void addStudent(List<String> names) {
  print("Digite o nome do aluno:");
  String? name = stdin.readLineSync();

  if (name != null && name.isNotEmpty) {
    names.add(name);
    print("O aluno $name foi adicionado a lista de ${names.length}");
  }
}

void addNote(List<double> notes) {
  print("Digite a nota do aluno:");
  double? note = double.tryParse(stdin.readLineSync()!);

  if (note != null && !note.isNaN) {
    notes.add(note);
    print("Nota adicionada: $note, lista de notas ${notes.length}");
  }
}

void addNamesOfStudents(List<String> names, List<List<double>> notes) {
  print("Digite o nome do aluno:");
  String? name = stdin.readLineSync();

  if (name != null) {
    names.add(name);
    List<double> notesOfStudent = [];

    while (true) {
      print(
        "Digite uma nota do aluno ou ***fim*** para encerrar a execução do programa:",
      );
      String? input = stdin.readLineSync();

      if (input == "fim") {
        break;
      } else if (input != null && input.isNotEmpty) {
        double? note = double.tryParse((input));
        notesOfStudent.add(note!);
      }
    }
    notes.add(notesOfStudent);
  } else {
    print("Nome digitado não condiz com o formato aceito. Tente novamente.");
    addNamesOfStudents(names, notes);
  }
}

void listStudentsAndMedias(List<String> names, List<List<double>> notes) {
  print("Lista de Alunos e sua médias");
  for (int i = 0; i < names.length; i++) {
    //calculando a media dos alunos que foram informados na lista.
    double media = calculateMedia(notes[i]);
    print("${names[i]}: ${media.toStringAsFixed(2)}");
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
