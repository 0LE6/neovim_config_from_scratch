
![Powershell](pic.png)

![Powershell2](pic2.png)

# Config Windows
Para que funcione en Windows se ha de hacer lo siguiete:

Instalar __scoop__ como gestor de instalaciónd de paquetes desde este link https://scoop.sh/, copia el script de powershell que hay para su instalación y listo.

Tener instalado LLVM y GCC, emplear el gestor de paquetes scoop (no hace halta luego añadir al PATH, se hace automatico con Scoop)
````bash
scoop install llvm

scoop install gcc
````

También hac falta la última versión de nodejs, instalamos con scoop también:

````bash
scoop install node
``````

Y por ultimo las herramientas de fd y ripgrep para temas de busquedas dentro de archivos:

````bash
scoop install ripgrep

scoop install fd
``````

NOTE: quizás se me escape algún detalle más, lo añadiriá aquí como update.

# Config Linux o en su defecto WSL
Para que todo sea más sencillo y rapido, usar Homebrew como manejador de paquetes.

https://brew.sh/

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Cuando lo tengamos, lo emplearemos para instalar Node, gcc, ripgrep...
Copiar, pegar y ejecutar el siguiente script de bash

```bash
# Hacemos un update
brew update

# Instalación de neovim (si aun no lo tenemos, usar la ver. más reciente)
brew install neovim

# Instalamos Node
brew install node

# Instalamos ripgrep y fd, super útil para buscador luego dentro de archivos
brew install ripgrep
brew install fd

# (Para WSL) Instalamos cosas para el compilador de GNU...
sudo apt install build-essential

# Instalamos un par de cosillas para unos idiomas
brew install python
brew install lua
brew install rust

# Instalar Yarn (para el plugin de Markdown)
sudo apt install yarn

echo "Perfecto, en principio todo ya está preparado!"
```

