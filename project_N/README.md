# Robot Framework Basic

Modelo de estruturação de pastas conforme o curso da Bianca Campos no YouTube [Aprenda Robot Framework (Kickoff)](https://youtu.be/cQbP3qsHnI0?si=IjGQ9qvfYBKeNr3_).

## Structure

    my_project
    ├── elements
    │   ├── eletronics
    │   │   ├── eletronics_elements.resource
    │   │
    │   ├── home
    │   │   ├── home_elements.resource
    │   │
    │   ├── main_elements.resource
    │   │
    │   ├── ...
    │
    ├── resources
    │   ├── settings.resource
    │   ├── ...
    │
    ├── steps
    │   ├── access
    │   │   ├── access_steps.robot
    │   │
    │   ├── eletronics
    │   │   ├── eletronics_steps.robot
    │   │
    │   ├── main_steps.robot
    │   │
    │   ├── ...
    │
    ├── tests
    │   ├── eletronics
    │   │   ├── access_page.robot
    │   │   ├── ...
    │   │
    │   ├── search
    │   │   ├── products.robot
    │   │   ├── ...
    │   │
    │   ├── ...
    │
    ├── .gitignore
    ├── README.md

## Running Tests

To run tests, run the following command

```bash
  robot -N "<execution_name>" -d <folder_name> <test_file/folder_name>
```
