# Tratado de Derecho Concursal Chileno

Manual sistemático de la Ley N.º 20.720 y su reforma por la Ley N.º 21.563.
Obra en LaTeX de **Alberto Tomás Stead Hogg**: veinticuatro capítulos en siete partes,
con índices de disposiciones legales, de jurisprudencia y analítico.

| Parte | Contenido |
|---|---|
| I | Fundamentos: evolución, sujetos, institucionalidad y arquitectura de la ley |
| II | Los seis procedimientos concursales, más el arbitraje |
| III | Tutela de la masa: revocatorias, discharge, incidente de mala fe |
| IV | Fronteras: penal económico e insolvencia transfronteriza |
| V | El concurso y el derecho del trabajo |
| VI | Las fuentes administrativas de la SUPERIR, incluida la normativa en trámite |
| VII | Manual de tramitación forense |

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
| `make` | Compilación completa: pdfLaTeX + Biber + los tres índices (secuencia explícita) |
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
  cap01-… a cap13b-…         Partes I-IV: dogmática y procedimientos
  cap21-…, cap22-…           Parte V: derecho del trabajo
  cap23-…, cap24-…           Parte VI: fuentes administrativas
  cap14-… a cap20-…          Parte VII: manual de tramitación forense
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

Exclusivos de la Parte V:

- `\begin{cuestionario}[Título]` con `\pregunta{pregunta}{por qué importa}` — bloques de
  entrevista al cliente.
- `\begin{checklist}[Título]` — lista de verificación con casillas.
- `\begin{foco}[Título]` — dónde se ganan y se pierden los casos.
- `\errorfrecuente{qué se hace mal}{consecuencia}{qué hacer en su lugar}`.
- `\fichaProcedimiento{sujeto}{sede}{duración}{costo}{resultado}` — ficha de apertura.

### Estructura uniforme de capítulo

**Partes I-IV.** Cada capítulo abre con `\fichaCapitulo{enfoque}{tratamiento}` y se divide
en cuatro bloques: `\bloqueTeorico`, `\bloqueNormativo`, `\bloquePractico` y
`\bloqueJurisprudencial`.

**Parte V.** Cada capítulo abre con `\fichaProcedimiento` y usa los bloques
`\bloqueEncargo`, `\bloqueEntrevista`, `\bloqueDocumental`, `\bloqueFocos`,
`\bloqueCronograma` y `\bloqueErrores`.

### Citas en APA 7

La obra usa `biblatex-apa` (APA 7.ª edición) con Biber y localización española.

| Situación | Comando | Resultado |
|---|---|---|
| Cita entre paréntesis | `\parencite{doc-cae-castro}` | (Castro A., 2026) |
| Cita integrada en la frase | `\textcite{doc-cae-castro}` | Castro A. (2026) |
| El cuerpo legal ya se nombró en la frase | `\citeyearpar{ley-20720}` | (2014) |
| Sólo debe figurar en las referencias | `\nocite{codigo-comercio}` | — |
| Varias fuentes a la vez | `\parencite{a, b}` | (A, 2023; B, 2024) |

**Tipos de entrada jurídicos** en `bibliografia/fuentes.bib`:

- `@legislation` — leyes y códigos (`ley-20720`, `codigo-civil`, …)
- `@jurisdiction` — sentencias (`juris-jamarne-salazar`, `juris-tc-12539-2021`, …)
- `@legadminmaterial` — normativa de la SUPERIR (`superir-ncg21`, `superir-ncg22`, …)
- `@article`, `@book`, `@report`, `@online` — doctrina

Regla de estilo adoptada, explicada en la nota de los preliminares: la legislación se
cita en la primera invocación sustantiva de cada capítulo; las remisiones posteriores al
articulado van por la abreviatura (`\art{57}`), que además alimenta el índice de
disposiciones legales.

El campo `note = {Verificar…}` de una entrada se imprime durante la redacción y
desaparece automáticamente al compilar con `\VerificacionesOff`.

### Marcas de trabajo editorial

- `\verificar{qué confirmar}` — dato jurídico que debe contrastarse con la fuente oficial
  antes de publicar. Aparece como nota al pie en rojo.
- `\pendiente{qué falta}` — texto por redactar. Nota al pie en gris.

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

Compila limpio: **259 páginas, 0 errores**, con bibliografía en APA 7, referencias
cruzadas y los tres índices resueltos. ~35.800 palabras redactadas y 118 entradas
bibliográficas.

| Capítulo | Estado |
|---|---|
| I. Evolución histórica | Redactado y con citas APA |
| IV. Reorganización ordinaria | Redactado contra el articulado (arts. 54-89) |
| V. Reorganización simplificada | Redactado contra el articulado (arts. 286 A-S) |
| VI. Renegociación administrativa | Redactado contra el articulado (arts. 260-268) |
| VIII. Liquidación simplificada | Redactado contra el articulado (arts. 203-209, 273 A-B, 282) |
| VII. Liquidación ordinaria | Redactado contra el articulado (arts. 115-170, 255-256) |
| III. Institucionalidad | Redactado contra el articulado (arts. 17-40, 331-338) |
| III bis. Arquitectura de la ley | Redactado |
| XIII bis. Arbitraje concursal | Redactado |
| XXI-XXII. Derecho del trabajo | Redactados |
| XXIII-XXIV. Fuentes administrativas | Redactados con catálogo verificado |
| XIV-XX (Parte VII, forense) | Redactados |
| II. Estatuto de los deudores | Redactado contra el articulado (art. 2) |
| IX. Acciones revocatorias | Redactado contra el articulado (arts. 287-293) |
| X. Discharge y CAE | Redactado contra el articulado (arts. 254-255) |
| XI. Incidente de mala fe | Redactado contra el articulado (art. 169 A) |
| XIII bis. Arbitraje concursal | Redactado contra el articulado (arts. 295-297) |
| XIII. Insolvencia transfronteriza | Redactado contra el articulado (arts. 300-319) |
| XII. Laboral y penal económico | Redactado (arts. 463 ss. CP, Ley 21.595) |
| Resto | Prosa jurisprudencial pendiente (requiere fallos de pjud.cl) |

Las marcas de trabajo se listan con `make verificaciones`.

---

## Advertencia sobre el contenido

Los datos normativos, plazos, quórums y referencias jurisprudenciales provienen del plan
de obra original y **no han sido verificados contra las fuentes oficiales**. Cada uno de
ellos está marcado con `\verificar`. Antes de publicar o de invocar cualquier cita en un
escrito, contrasta el articulado con el texto vigente en BCN – Ley Chile y las sentencias
con el sitio del Poder Judicial.
# Tratado-Insolvencia
