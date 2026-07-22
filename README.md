# Tratado de Derecho Concursal Chileno

Manual sistemático de la Ley N.º 20.720 y su reforma por la Ley N.º 21.563.
Obra en LaTeX, trece capítulos, con índices de disposiciones legales, de jurisprudencia
y analítico.

---

## Puesta en marcha (una sola vez)

### 1. Instalar TeX Live

```bash
brew install texlive
```

Se instala en `/opt/homebrew` y no requiere contraseña de administrador. Incluye todos
los paquetes que usa la obra (memoir, biblatex, biber, tcolorbox, TikZ, imakeidx,
microtype, latexmk).

> Alternativa liviana: `brew install --cask basictex` (~150 MB, pide contraseña) y
> después `sudo ./scripts/instalar-paquetes-tex.sh`, que instala sólo los paquetes
> necesarios.

### 2. Instalar la extensión de VS Code

```bash
code --install-extension james-yu.latex-workshop
```

Al abrir la carpeta, VS Code ofrecerá el resto de extensiones recomendadas
(`.vscode/extensions.json`).

---

## Compilar

| Comando | Qué hace |
|---|---|
| `make` | Compilación completa: LaTeX + Biber + los tres índices, hasta estabilizar |
| `make rapido` | Una pasada, sin bibliografía ni índices — para el ciclo de escritura |
| `make ver` | Compila y abre el PDF |
| `make verificaciones` | Lista todas las marcas `\verificar` y `\pendiente` |
| `make palabras` | Recuento aproximado de palabras |
| `make limpiar` | Borra auxiliares, conserva el PDF |

En VS Code: `⌘+Alt+B` compila, `⌘+Alt+V` abre el visor, `⌘+Alt+J` salta del código al PDF.

---

## Estructura del repositorio

```
tratado.tex                  Archivo maestro: orden de capítulos y estructura del libro
preambulo/
  paquetes.tex               Paquetes y paleta de color
  estilo.tex                 Caja, títulos, encabezados, cajas y estilos TikZ
  macros.tex                 Macros de dominio jurídico (\art, \ley, \fallo, …)
preliminares/
  portada.tex                Portada y página de créditos
  plan-de-obra.tex           Tabla de los trece capítulos
  abreviaturas.tex           Siglas y advertencia sobre citas normativas
capitulos/
  cap01-…  a  cap13-…        Un archivo por capítulo
apendices/
  apa-formularios.tex        Modelos de escritos
  apb-plazos.tex             Tabla consolidada de plazos
bibliografia/fuentes.bib     Fuentes en formato BibLaTeX
figuras/                     Imágenes externas, si las hubiera
scripts/                     Utilidades de instalación
```

---

## Cómo escribir en esta obra

### Macros de dominio

En lugar de escribir el texto a mano, usa las macros: además de uniformar la redacción,
alimentan los índices automáticamente.

| Escribe | Produce | Efecto adicional |
|---|---|---|
| `\LIR{}` | Ley N.º 20.720 | Entrada en el índice de leyes |
| `\Lreforma{}` | Ley N.º 21.563 | ídem |
| `\art{57}` | artículo 57 | Subentrada «Ley 20.720 → art. 57» |
| `\art[20.416]{2}` | artículo 2 de la Ley N.º 20.416 | ídem, bajo esa ley |
| `\artcc{2465}` | artículo 2465 del Código Civil | Índice de leyes |
| `\rol{4656-2017}` | Rol N.º 4656-2017 | — |
| `\fallo{Carátula}{Rol}{Tribunal}{Año}` | cita completa | Índice de jurisprudencia |
| `\discharge{}`, `\pfc{}`, `\mipe{}`, … | término | Índice analítico |
| `\lat{par condicio creditorum}` | cursiva | Índice analítico |
| `\idx{voz}` | nada visible | Sólo entrada de índice |

La lista completa está en `preambulo/macros.tex`.

### Entornos

- `\begin{escrito}[Título]` — modelo de escrito judicial, en caja crema.
- `\begin{practica}[Título]` — nota de práctica forense, con filete lateral.
- `\begin{alerta}[Título]` — advertencia o trampa procesal.
- `\begin{norma}{Art. N}` — cita normativa en bloque.
- `\begin{flujograma}{Título}{etiqueta}` — diagrama de flujo TikZ.
  Estilos disponibles: `hito`, `nodo`, `favorable`, `adverso`, `bifurcacion`, `flecha`.

### Estructura uniforme de capítulo

Cada capítulo abre con `\fichaCapitulo{enfoque}{tratamiento}` y se divide en los cuatro
bloques del plan de obra, mediante las macros `\bloqueTeorico`, `\bloqueNormativo`,
`\bloquePractico` y `\bloqueJurisprudencial`.

### Marcas de trabajo editorial

- `\verificar{qué confirmar}` — dato jurídico que debe contrastarse con la fuente oficial
  antes de publicar. Aparece como nota al margen en rojo.
- `\pendiente{qué falta}` — texto por redactar. Nota al margen en gris.

Ambas se listan con `make verificaciones` y se ocultan para la versión de imprenta
añadiendo `\VerificacionesOff` en `tratado.tex`, después de `\input{preambulo/macros}`.

---

## Compilación parcial

Escribir un capítulo sin recompilar los trece: descomenta en `tratado.tex` la línea

```latex
\includeonly{capitulos/cap01-evolucion-historica}
```

Los números de página y las referencias cruzadas se conservan gracias a los `.aux`
existentes.

---

## Estado de la obra

Compila limpio: **91 páginas, 0 errores**, con bibliografía, referencias cruzadas y los
tres índices resueltos. ~8.500 palabras redactadas de las ~200.000 que proyecta el plan.

| Capítulo | Estado |
|---|---|
| I. Evolución histórica y dogmática | Redactado (~4.000 palabras) |
| II a XIII | Estructura, tablas, flujogramas y modelos listos; prosa pendiente |
| Apéndice A. Formularios | Dos modelos; el resto pendiente |
| Apéndice B. Plazos | Tabla preliminar, requiere verificación íntegra |

Quedan **41 marcas `\verificar`** y **45 `\pendiente`**; ambas se listan con
`make verificaciones`.

---

## Advertencia sobre el contenido

Los datos normativos, plazos, quórums y referencias jurisprudenciales provienen del plan
de obra original y **no han sido verificados contra las fuentes oficiales**. Cada uno de
ellos está marcado con `\verificar`. Antes de publicar o de invocar cualquier cita en un
escrito, contrasta el articulado con el texto vigente en BCN – Ley Chile y las sentencias
con el sitio del Poder Judicial.
# Tratado-Insolvencia
