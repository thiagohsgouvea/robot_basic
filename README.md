# Robot Framework Basic

### Projects

Project 1 - Projeto de testes do site Amazon - BR, desenvolvido durante o curso da May Fernandes na Udemy [Automação de Testes com Robot Framework - Básico](https://www.udemy.com/course/automacao-de-testes-com-robot-framework-basico/) - (Até o Móduldo 3).

Project 2 - Trabalhando com Variáveis - Tipos e escopos de variáveis e argumentos de keywords. Módulo 4 do Curso da May Fernandes na Udemy [Automação de Testes com Robot Framework - Básico](https://www.udemy.com/course/automacao-de-testes-com-robot-framework-basico/).

Project 3 - Estruturas do Robot - Logs, If e Else e Loops. Módulo 5 do curso da May Fernandes na Udemy [Automação de Testes com Robot Framework - Básico](https://www.udemy.com/course/automacao-de-testes-com-robot-framework-basico/).

Project N - Estruturação de pastas conforme o curso da Bianca Campos no YouTube [Aprenda Robot Framework (Kickoff)](https://youtu.be/cQbP3qsHnI0?si=IjGQ9qvfYBKeNr3_).

## Running Tests

To run tests, run the following command

**Default**

```bash
  robot <test_file_name>
  robot <test_folder_name>
```

**Run by title**

```bash
  robot -t "<test_title>" <test_file/folder_name>
```

**Contains tag**

```bash
  robot -i <tag_name> <test_file/folder_name>
```

**Exclude tag**

```bash
  robot -e <tag_name> <test_file/folder_name>
```

**Specify results folder**

```bash
  robot -d <folder_name> <test_file/folder_name>
```

**Naming an execution**

```bash
  robot -N "<execution_name>" -d <folder_name> <test_file/folder_name>
```

**Global variable value**

```bash
  robot -d <folder_name> -v <VARIABLE>:<value> <test_file/folder_name>

```
