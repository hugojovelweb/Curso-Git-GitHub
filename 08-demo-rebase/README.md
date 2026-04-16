# Objetivos de la repositorio

Este proyecto se encarga de manejar los planes de la liga de la justicia


Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.



### Problemas que aprendi extra en este modulo: 
- Error de eliminar .git de carpeta raiz.
- 08-demo-rebase como problemas en la carpeta .git detectado como submodulo

### Solucion: 

Se borró el .git raíz → por eso dice "not a git repository"
08-demo-rebase sigue siendo un submódulo (ícono especial en GitHub)

### Vamos paso a paso desde la terminal de VS Code:

Paso 1: Reinicializar Git en la raíz
bashcd G:\Archive-Projects\2026\Curso-Git-GitHub
git init
Paso 2: Reconectar el repositorio remoto
bashgit remote add origin https://github.com/hugojovelweb/Curso-Git-GitHub.git
Paso 3: Traer el historial del remoto
bashgit fetch origin
git branch -M main
git reset --hard origin/main
⚠️ Esto sincronizará tu rama local con el remoto. Si tienes cambios locales nuevos que no están en GitHub, primero resérvalos con git stash.

Paso 4: Arreglar 08-demo-rebase (submodule → carpeta normal)
Después de que Git esté restaurado:
bash# Verificar si existe .gitmodules
cat .gitmodules

# Eliminar la referencia al submódulo
git rm --cached 08-demo-rebase

# Eliminar el .gitmodules si solo tenía ese entry
del .gitmodules

# Agregar la carpeta como contenido normal
git add 08-demo-rebase/
git commit -m "Fix: convert 08-demo-rebase from submodule to regular folder"
git push origin main

Paso 5: Verificar que todo quedó bien
bashgit status
git log --oneline -5
git remote -v

Solucionado. 