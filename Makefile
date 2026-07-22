MAIN    := tratado
PDF     := $(MAIN).pdf
LATEXMK := latexmk

.PHONY: all pdf rapido limpiar distclean palabras verificaciones ver ayuda

all: pdf

## pdf — compilación completa (LaTeX + Biber + índices, hasta estabilizar)
pdf:
	$(LATEXMK) -pdf $(MAIN).tex

## rapido — una sola pasada, sin bibliografía ni índices (ciclo de escritura)
rapido:
	$(LATEXMK) -pdf -e '$$bibtex_use=0;' $(MAIN).tex

## ver — compila y abre el PDF resultante
ver: pdf
	@open $(PDF)

## palabras — recuento aproximado de palabras del cuerpo de la obra
palabras:
	@if command -v texcount >/dev/null 2>&1; then \
		texcount -inc -total -sum $(MAIN).tex; \
	else \
		echo "texcount no está instalado: viene con TeX Live"; \
	fi

## verificaciones — lista las marcas editoriales pendientes
verificaciones:
	@printf '=== %s (dato jurídico por confirmar) ===\n' '\verificar'
	@grep -rn '\verificar' capitulos apendices preliminares 2>/dev/null || echo "  ninguna"
	@echo ""
	@printf '=== %s (texto por redactar) ===\n' '\pendiente'
	@grep -rn '\pendiente' capitulos apendices preliminares 2>/dev/null || echo "  ninguna"

## limpiar — borra archivos auxiliares, conserva el PDF
limpiar:
	$(LATEXMK) -c $(MAIN).tex

## distclean — borra todo, incluido el PDF
distclean:
	$(LATEXMK) -C $(MAIN).tex

## ayuda — muestra estos objetivos
ayuda:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## /  /'
