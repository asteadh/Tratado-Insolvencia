# Brief de investigación para IA de Deep Research

> **Instrucciones de uso:** copia todo este documento como prompt en tu herramienta de deep
> research (Gemini Deep Research, ChatGPT Deep Research, Perplexity Pro, etc.). Si la herramienta
> limita el largo, ejecútalo por bloques (cada "Hilo" es autónomo). Ejecuta primero el **Hilo 0
> (reglas)** y mantenlo en contexto para todos los demás.

---

## HILO 0 — Rol, misión y reglas (leer siempre primero)

Actúa como **investigador jurídico senior en derecho concursal chileno**. Estás documentando un
*Tratado de Derecho Concursal Chileno* sobre la **Ley N.º 20.720** (Ley de Reorganización y
Liquidación de Empresas y Personas) y su reforma por la **Ley N.º 21.563** (D.O. 10-05-2023),
más la **Ley N.º 21.595** de Delitos Económicos (D.O. 17-08-2023).

### Fuentes autorizadas (en este orden de prioridad)
1. **Poder Judicial** — Oficina Judicial Virtual y buscador de jurisprudencia (`pjud.cl`).
2. **Tribunal Constitucional** (`tribunalconstitucional.cl`) para requerimientos de inaplicabilidad.
3. **Superintendencia de Insolvencia y Reemprendimiento** (`superir.gob.cl`): normativa, boletines
   estadísticos, instructivos, NCG.
4. **Biblioteca del Congreso Nacional** (`bcn.cl` / `leychile.cl`): textos legales e historia de la ley.
5. **VLex, Microjuris, Westlaw, Thomson Reuters, DIARIO CONSTITUCIONAL, Revista de Derecho** para
   fallos y doctrina.
6. Repositorios académicos: revistas de Derecho de U. de Chile, PUC, UDP, U. de Concepción, U. de
   Valparaíso; `scielo.cl`, `dialnet`.

### Reglas absolutas (anti-alucinación)
- **Nunca inventes** un rol, carátula, fecha, considerando ni cita. Si no lo encuentras en una
  fuente verificable, escribe literalmente: **`NO ENCONTRADO`** y describe qué buscaste.
- **Cita textual entre comillas** todo considerando o pasaje legal que transcribas, con el número
  de considerando y la fuente exacta (URL o base de datos + identificador).
- Distingue siempre **dato confirmado** (con fuente) de **inferencia** (marcada como tal).
- Si una fuente está tras muro de pago, entrega igualmente los **metadatos** (rol, tribunal, sala,
  fecha, carátula) y **dónde** está, aunque no puedas transcribir el texto completo.
- Prioriza el **texto vigente** (post-reformas 21.563 y 21.595). Advierte cuando un fallo aplique
  la versión anterior de una norma.

### Formato de salida por cada hallazgo
Devuelve una ficha con esta estructura exacta:

```
### [Identificador corto]
- **Rol / N.º:**
- **Tribunal y sala:**
- **Fecha:**
- **Carátula:**
- **Materia / tesis:**
- **Considerando(s) clave:** "[cita textual]" (cons. N.º __)
- **Estado procesal:**
- **Fuente (URL o base + id):**
- **Cita APA 7:** (formato: *Carátula*, Rol N.º ___ (Tribunal, fecha))
- **Confianza:** Alta / Media / Baja + motivo
```

Al final de cada hilo, entrega una **tabla resumen** (identificador | rol | fecha | 1 frase) y una
lista de **`NO ENCONTRADO`** con lo que reste por rastrear en bases de pago.

---

## HILO 1 — Crédito con Aval del Estado (CAE) y la descarga concursal

**Objetivo:** documentar la saga jurisprudencial sobre si el CAE se extingue o no con el discharge
de la persona deudora, y la disputa sobre las protecciones aplicables.

**Semillas ya conocidas (verifícalas y complétalas, no las des por ciertas):**
- Jamarne: causa C-902-2016 (Temuco) / CA Rol 545-2016.
- CS Rol **47.641-2024** (habría un fallo de reemplazo ~20-dic-2025 que revoca a la CA de Santiago
  Rol 9569-2024); CS Rol **3557-2025**.
- Mancilla: CA de Puerto Montt Rol **147-2020** (20-07-2020).
- **Segunda Sala de la CA de Concepción**: fallos que rechazan extender protecciones al CAE (roles
  y fechas por individualizar).

**Extraer:** para cada fallo, la tesis sobre (a) si el CAE es un crédito que sobrevive a la
descarga; (b) el rol de la Tesorería/bancos; (c) el argumento de especialidad. Buscar el voto
disidente que limite la especialidad "solo a la TGR, no a los bancos".

**Doctrina:** ubicar el artículo de **Guillermo Caballero Germain** sobre la exclusión del CAE de
la descarga (revista, volumen, páginas, año). Buscar también a **Alarcón Cañuta** sobre el tema.

---

## HILO 2 — Nulidad del despido (Ley Bustos) en sede concursal

**Objetivo:** confirmar los fallos de **unificación de jurisprudencia de la CS** que fijan el
límite temporal de la nulidad del art. 162 CdT en la fecha de la resolución de liquidación.

**Semillas:** CS Roles **40.689-2016**, **139.538-2022**, **66.235-2021** (Cuarta Sala).

**Extraer:** carátula y fecha exacta de cada uno; el considerando que establece que, por
especialidad del art. 163 bis CdT y por el desasimiento, la sanción se detiene en la liquidación
(y no corre hasta la convalidación como en el despido ordinario).

**Además:** el crédito laboral/previsional verificado por **más de $160.000.000** a favor de un
solo trabajador —presunto Rol **44.461**, CA de Santiago—: confirmar rol, carátula y monto exacto.

---

## HILO 3 — Insolvencia transfronteriza (Capítulo VIII, Ley Modelo UNCITRAL)

**Objetivo:** verificar rol, tribunal, fecha y estado procesal de los casos chilenos de
reconocimiento de procedimientos extranjeros.

**Semillas (confirmar cada una):**
- **Elimco** — primer reconocimiento en Chile (~12-02-2018).
- **Astaldi** (2019); **NBI** (2018).
- **Isolux Ingeniería** — Rol C-3104-2018, 22.º Juzgado Civil de Santiago (~16-11-2020):
  ¿reconocimiento sin juicio local previo y designación directa de liquidadores?
- **Assignia Infraestructuras** — Rol C-32054-2019, 10.º Juzgado Civil de Santiago: ¿desistimiento
  del reconocimiento? ¿cómo terminó?
- **Ónix / Chang** — Rol C-22090-2016.
- **LATAM Airlines** — CA de Santiago Roles 9476-2020 / 9475-2020: discusión sobre el **COMI**
  (centro de principales intereses) y la oposición de acreedores locales.

**Extraer:** para cada caso, si se reconoció como procedimiento **principal o no principal**, qué
medidas se concedieron (arts. 318-320) y cómo se trató el interés de los acreedores chilenos.

---

## HILO 4 — Mala fe del deudor (art. 169 A) tras la Ley 21.563

**Objetivo:** localizar las **primeras resoluciones de juzgados civiles** (posteriores a mayo de
2023) que aplican el incidente de mala fe y deniegan total o parcialmente la extinción de saldos.

**Extraer:** criterios sobre (a) si basta la omisión no fraudulenta o se exige dolo; (b) la
proporcionalidad (gravedad vs. mera desprolijidad); (c) discusión sobre el *ne bis in idem* con los
delitos concursales (arts. 463 y ss. CP) y con la sanción del art. 169.

**Doctrina:** ubicar a **Alarcón Cañuta** (crítica al inciso cuarto del 169 A) y a **Goldenberg
Serrano** (proporcionalidad y sobreendeudamiento): datos bibliográficos completos.

---

## HILO 5 — Control del acuerdo, impugnación y personas relacionadas

**Objetivo:** jurisprudencia de la **Sala Civil de la CS** sobre:
1. El **alcance del control judicial de mérito** del acuerdo de reorganización (causales taxativas
   del art. 85: ¿solo legalidad/cómputo o también contenido?).
2. **Impugnación** del acuerdo fundada en la participación de **personas relacionadas** en el
   quórum (arts. 79 y 63).
3. **Banco Santander con Asesorías Abarca** — CS Rol **34.713-2023** (Primera Sala): confirmar
   carátula/fecha y el considerando sobre cláusulas de aceleración abusivas (art. 16 g Ley 19.496).

---

## HILO 6 — Acciones revocatorias y desasimiento

**Objetivo:**
1. **CA de Puerto Montt Rol 16-2017** (revocatoria concursal): confirmar carátula y considerandos
   sobre la naturaleza del plazo del art. 291 y la **improcedencia del abandono del procedimiento**.
2. Jurisprudencia sobre **nulidad de los actos del deudor** posteriores a la resolución de
   liquidación (desasimiento, art. 130).
3. **Responsabilidad civil del liquidador** por bienes no realizados a tiempo o dañados bajo su
   custodia (arts. 35, 49): fallos que la hayan declarado.

---

## HILO 7 — Control constitucional (Tribunal Constitucional)

**Objetivo:** requerimientos de inaplicabilidad sobre el **art. 4** (régimen recursivo restrictivo)
y otros preceptos de la Ley 20.720.

**Semillas:** TC Roles **11.421-2021**, **12.539-2021**, **12.527-2021**, **10.957-2021**
(incautación de remuneraciones), **9.097-2020-INA**. Confirmar carátula, fecha, resultado
(acogido/rechazado) y el estándar fijado.

---

## HILO 8 — Otros frentes jurisprudenciales

1. **Inembargabilidad de pensiones/jubilación** en el concurso de la persona deudora: rol, sala,
   fecha, tesis.
2. **Recursos de protección** por mantención de registros negativos (DICOM/boletín comercial) tras
   la extinción de saldos: individualizar sentencias de Cortes de Apelaciones.
3. **Determinación de competencia y tipo de deudor** (empresa deudora vs. persona deudora): fallos.
4. **Arbitraje concursal** (arts. 295-297): casos chilenos reales en que se haya empleado.
5. **Reorganización simplificada** (arts. 286 A-S): primeros fallos y criterios sobre "unidad
   económica".

---

## HILO 9 — Normativa administrativa e instructivos SUPERIR

Buscar en `superir.gob.cl` (sección normativa/instructivos) y confirmar **número, fecha y vigencia**:
1. **Instructivo sobre finiquitos electrónicos** (integración con plataforma de la Dirección del
   Trabajo).
2. **Instructivo sobre incautación** de bienes.
3. **Oficio Circular sobre bienes de la sociedad conyugal** en el concurso de la persona deudora
   (relación con el art. 1749 CC) — se cita como "Oficio Circular N.º 5/2020": confirmar.
4. **Resolución sobre incautación e inventario** (se cita como "Resolución N.º 520"): confirmar.
5. **Garantía de fiel desempeño** del veedor/liquidador: monto, forma y plazo de aceptación del
   cargo vigentes (NCG aplicable).
6. **Norma de Carácter General vigente** que regula la renegociación de la persona deudora
   (verificar que la NCG 28 esté vigente y no haya sido reemplazada).
7. **Dictámenes de la Contraloría** sobre probidad y responsabilidad de los auxiliares de la
   insolvencia y sobre la potestad sancionatoria de la SUPERIR: números y materias.

---

## HILO 10 — Estadísticas oficiales

En el **Boletín Estadístico de la SUPERIR** (y en `datos.gob.cl` si aplica), obtener las cifras
**más recientes disponibles**, con año y fuente exacta:
1. N.º de renegociaciones de persona deudora y su variación interanual; % de solicitudes de
   emisores de boletas de honorarios; tasa de acuerdos (efectividad).
2. N.º de liquidaciones simplificadas de personas; participación por género.
3. **Asistencia a las tres audiencias** de la renegociación (determinación del pasivo,
   renegociación, ejecución).
4. **Concentración territorial** de las solicitudes (peso de la Región Metropolitana).

---

## HILO 11 — Historia legislativa y contexto (BCN)

1. **Ley N.º 4.558** (antigua ley de quiebras): fecha exacta de publicación y ámbito.
2. Evolución del sistema de **síndicos** hacia veedores/liquidadores fiscalizados.
3. **Historia de la Ley 20.720 y de la Ley 21.563** (BCN): mensaje presidencial e informes de
   comisión; buscar el dato de que las MIPE representaban ~14 % de las reorganizaciones y la
   finalidad de los procedimientos simplificados.

---

## Entregable final consolidado

Al terminar, entrega:
1. Un documento con todas las fichas por hilo (formato del Hilo 0).
2. Un **bloque BibTeX** con las entradas nuevas listas para pegar, usando los tipos
   `@jurisdiction` (fallos), `@legadminmaterial` (instructivos/NCG/dictámenes), `@report`
   (estadísticas) y `@article`/`@book` (doctrina).
3. Una **lista final de `NO ENCONTRADO`** con recomendación de dónde seguir buscando (base de pago
   concreta y términos de búsqueda sugeridos).
