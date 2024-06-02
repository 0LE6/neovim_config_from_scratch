# De momento en Windows peta
NOTE: peta por temas de Windows y alguno de los plugins, que hace que __"crashee"__
Se requiere la instalación de Node.js (versión superior a 20.x)

# Usar Linux o en su defecto WSL
Para que todo sea más sencillo y rapido, usar Homebrew como manejador de paquetes.

https://brew.sh/

'''bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
'''

Cuando lo tengamos, lo emplearemos para instalar Node, gcc, ripgrep...
Copiar, pegar y ejecutar el siguiente script de bash

'''bash
# Hacemos un update
brew update

# Instalación de neovim (si aun no lo tenemos, usar la ver. más reciente)
brew install neovim

# Instalamos Node
brew install node

# Instalamos ripgrep, super útil para buscador luego dentro de archivos
brew install ripgrep

# Instalamos cosas para el compilador de GNU...
brew install fd
brew install gcc

# Instalamos un par de cosillas para unos idiomas
brew install python
brew install lua
brew install rust

echo "Perfecto, en principio todo ya está preparado!"
'''

