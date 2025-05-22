#!/bin/bash

# Verifica se um argumento foi passado
if [ -z "$1" ]; then
  echo "Uso: $0 nome_do_projeto"
  exit 1
fi

# Declaração de variáveis
project_name="$1"
project_path="./$project_name"

# Manipulação de arquivos e diretórios
mkdir -p "$project_path"
# Segurança no controle de fluxo: '|| exit' para evitar que o script continue caso o cd falhe.
cd "$project_path" || exit

touch index.html
touch style.css
touch script.js

echo "<!DOCTYPE html>
<html lang=\"pt-br\">

<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <link rel=\"stylesheet\" href=\"style.css\">
  <title>Automação de tarefas</title>
</head>

<body>
  <h1>Hello World!</h1>
  <script src=\"script.js\"></script>
</body>

</html>" > index.html

echo "h1 {
  background-color: blue;
}" > style.css

echo "
console.log('O projeto foi carergado com sucesso!');" > script.js

# Saída de informações
echo "Projeto criado em $(pwd)"
