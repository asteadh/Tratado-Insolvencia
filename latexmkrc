# Configuración de latexmk para el Tratado de Derecho Concursal Chileno

# pdfLaTeX con shell-escape: imakeidx invoca makeindex por sí mismo para los
# tres índices de la obra (leyes, jurisprudencia y analítico).
$pdf_mode  = 1;
$pdflatex  = 'pdflatex -shell-escape -interaction=nonstopmode -synctex=1 %O %S';

# Bibliografía con Biber
$bibtex_use = 2;

# Los auxiliares quedan junto al fuente (están en .gitignore).
# No se usa $out_dir porque imakeidx y makeindex no lo manejan de forma fiable.

# Archivos generados que debe borrar `latexmk -c/-C`
$clean_ext = "bbl run.xml synctex.gz " .
             "idx ind ilg " .
             "leyes.idx leyes.ind leyes.ilg " .
             "juris.idx juris.ind juris.ilg " .
             "analitico.idx analitico.ind analitico.ilg";

# Recompilar hasta estabilizar referencias cruzadas, TOC e índices
$max_repeat = 6;
