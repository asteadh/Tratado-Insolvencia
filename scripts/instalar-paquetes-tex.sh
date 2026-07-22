#!/usr/bin/env bash
#
# Instala los paquetes de TeX Live que necesita el Tratado.
# Requiere BasicTeX ya instalado y privilegios de administrador.
#
#   1) brew install --cask basictex     (pide tu contraseña)
#   2) eval "$(/usr/libexec/path_helper)"
#   3) sudo ./scripts/instalar-paquetes-tex.sh
#
set -euo pipefail

if ! command -v tlmgr >/dev/null 2>&1; then
  echo "error: no se encuentra tlmgr."
  echo "Instala BasicTeX primero:  brew install --cask basictex"
  echo "Luego abre una terminal nueva o ejecuta: eval \"\$(/usr/libexec/path_helper)\""
  exit 1
fi

if [[ "${EUID}" -ne 0 ]]; then
  echo "error: ejecuta este script con sudo."
  echo "  sudo $0"
  exit 1
fi

echo "==> Actualizando el gestor de paquetes de TeX Live"
tlmgr update --self

PAQUETES=(
  # Motor de compilación y utilidades
  latexmk
  texcount

  # Clase del libro y tipografía
  memoir
  microtype
  helvetic
  lm

  # Idioma español
  babel-spanish
  csquotes

  # Color, gráficos y diagramas
  xcolor
  pgf
  tcolorbox
  environ
  trimspaces

  # Tablas y listas
  booktabs
  multirow
  tabularx
  enumitem
  ragged2e

  # Bibliografía
  biblatex
  biber
  logreq

  # Índices
  imakeidx
  xpatch

  # Referencias cruzadas
  cleveref

  # Dependencias frecuentes
  etoolbox
  pdftexcmds
  infwarerr
  kvoptions
  ifoddpage
  varwidth
  ulem
)

echo "==> Instalando ${#PAQUETES[@]} paquetes (esto puede tardar varios minutos)"
tlmgr install "${PAQUETES[@]}"

echo "==> Actualizando la base de datos de nombres de archivo"
mktexlsr

echo ""
echo "Listo. Comprueba la instalación con:"
echo "  make pdf"
