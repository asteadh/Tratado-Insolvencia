# Comando de deep research — cierre de los `\verificar`

> Copia TODO este texto como prompt en tu herramienta de deep research (Gemini/ChatGPT/Perplexity).
> Está diseñado para **cerrar las 33 marcas de verificación** del tratado. Si la herramienta corta
> por largo, ejecútalo por secciones (§1 a §5); mantén siempre el **§0 (reglas)** en contexto.

---

## §0 — REGLAS (leer siempre primero, son la parte más importante)

Eres un verificador jurídico. Tu tarea NO es redactar doctrina, sino **confirmar contra fuente
primaria** datos que ya están escritos, y devolver la **cita textual + el enlace permanente**.

**Contexto:** en verificaciones anteriores, las IA de investigación **fabricaron** datos (una
sentencia inexistente confundida con un número de Diario Oficial; salas, fechas y roles erróneos).
Por eso estas reglas son estrictas:

1. **Nunca inventes.** Si no encuentras el dato en una fuente verificable, escribe exactamente
   **`NO ENCONTRADO`** y describe qué buscaste y dónde.
2. **Devuelve siempre el enlace permanente** (URL de la OJV/pjud.cl, del Tribunal Constitucional,
   del BOE, de Legifrance, etc.) de donde sacaste el dato. Sin URL, el dato no sirve.
3. **Cita textual entre comillas** el considerando o el pasaje, con su **número de considerando**.
   No parafrasees lo que pido confirmar textualmente.
4. **Verifica, no confíes en la semilla.** Los roles que te doy abajo provienen de compilaciones
   secundarias y **pueden estar mal**. Confírmalos contra la fuente oficial; si el rol no
   corresponde a lo que describo, dilo.
5. **Distingue** dato confirmado (con URL) de inferencia (márcala como tal).
6. Prioriza fuentes oficiales: **pjud.cl / Oficina Judicial Virtual**, **tribunalconstitucional.cl**,
   **superir.gob.cl / boletinconcursal.cl**, **bcn.cl**, **boe.es**, **legifrance.gouv.fr**,
   **legislation.gov.uk**, **uscourts.gov**, **gesetze-im-internet.de**.

**Formato de salida por cada punto:**
```
### [ID del punto, p. ej. J1]
- Confirmado: SÍ / NO / PARCIAL
- Dato/considerando (textual): "…" (cons. N.º __)
- Fuente (URL permanente): …
- Observación: (si el rol o la sala no coincide con lo descrito, explícalo)
```
Cierra cada sección con una lista de los puntos `NO ENCONTRADO`.

---

## §1 — Jurisprudencia chilena: CONFIRMAR considerandos de roles ya identificados

Para cada uno: confirma **carátula, sala, fecha y el considerando** que sostiene la tesis indicada,
con el enlace de la OJV/pjud.cl (o del TC).

- **J1 — CAE, exclusión (Sala Civil CS):** Rol **47.641-2024** (sentencia de reemplazo, ~20-12-2025,
  excluye el CAE; voto disidente Silva Cancino sobre legitimación de la TGR) y Rol **3557-2025**
  (Banco Internacional). Confirmar considerandos.
- **J2 — CAE, inclusión (3.ª Sala CS):** Rol **59.567-2020** (Mancilla c/ TGR, 20-07-2020, protección
  acogida, revoca CA Puerto Montt 147-2020).
- **J3 — CAE fundacional (1.ª Sala CS):** Rol **4656-2017** (~09-05-2017). Confirmar carátula real
  (¿«Banco del Estado c/ Jamarne» o «Jamarne c/ Salazar»?).
- **J4 — CAE, retención tributaria TGR:** Roles CS **55.090-2024** y **54.802-2024** (el Fisco
  conserva el derecho a retener devoluciones aun prescrita la acción del banco). Confirmar.
- **J5 — Ley Bustos (4.ª Sala CS), casos GENERALES (no concursales):** **40.689-2016** (autodespido
  compatible con nulidad), **66.235-2021** (Rioseco c/ EFE, ~26-12-2022, horas extras, fallo
  declarativo), **139.538-2022** (convalidación = 2 requisitos copulativos: pago + carta
  certificada). Confirmar y **advertir si alguno se refiere a un empleador en liquidación** (no
  deberían).
- **J6 — Cláusulas de aceleración:** Rol **34.713-2023** (1.ª Sala CS, ~24-10-2024, Banco Santander
  c/ Asesorías Abarca). Confirmar en especial los **considerandos 38.º y 39.º**.
- **J7 — Impugnación de acuerdo / par condicio:** Rol **43.419-2024** (1.ª Sala CS, 26-09-2025,
  redactor Prado Puga, Nutreco c/ Nova Austral, causal 6.ª art. 85; origen C-110-2023 J. de Letras
  y Garantía de Porvenir; revoca CA Punta Arenas). Confirmar el considerando sobre el art. 19 N.º 24
  CPR y el detalle Nutreco/Ewos.
- **J8 — Apremios del liquidador (amparo):** Rol **20.308-2025** (CS, precedente «Heresmann», revoca
  CA Puerto Montt; no hay arresto del art. 169 sin incidente previo del art. 131). Confirmar.
- **J9 — Revocatorias, plazo y abandono:** Rol **16-2017** (CA de Puerto Montt; art. 291 de
  caducidad, improcedencia del abandono). Confirmar carátula, fecha y considerando.
- **J10 — Tribunal Constitucional:** **11.421-2021-INA** (Soto Rubilar, 06-04-2022, art. 4 N.º 2,
  rechazado), **12.539-2021-INA** y **12.527-2021-INA** (03-11-2022, ne bis in idem, rechazados),
  **10.957-2021-INA** (González Guerra, incautación de remuneraciones), **4074-2018** (Henríquez
  Garay, apelabilidad supletoria) y **14.004-2023** (constitucionalidad del art. 169 A). Confirmar
  carátulas, fechas y resultado en tribunalconstitucional.cl.
- **J11 — Mala fe (art. 169 A), primeras resoluciones:** fallo del **28.º Juzgado Civil de Santiago**
  (libros contables ocultos) y **2.º Juzgado Civil de Concepción, Rol C-891-2021**. Confirmar rol
  y carátula del de Santiago; cotejar el C-891-2021.

---

## §2 — Jurisprudencia chilena: FALTA el rol (buscar e individualizar)

Devuelve rol, tribunal, sala, fecha, carátula y el considerando pertinente. Si no aparece en fuentes
abiertas, indica la base de pago concreta y los descriptores.

- **B1 — CAE, Duodécima Sala CA de Concepción:** roles/fechas de los fallos que rechazan amparar al
  deudor contra la retención del CAE.
- **B2 — Responsabilidad civil del liquidador** (arts. 35 y 49): sentencia condenatoria por bienes
  no realizados a tiempo o deteriorados.
- **B3 — Impugnación por personas relacionadas** en el quórum (causal 3.ª del art. 85; arts. 63 y 79).
- **B4 — Ineficacia de actos post-desasimiento** (art. 130) y la inoponibilidad de la buena fe del
  tercero.
- **B5 — «Unidad económica» en la reorganización simplificada MIPE** (arts. 286 A y ss.): fallos que
  rechazan la fragmentación artificial.
- **B6 — Discharge parcial:** fallos que declaran que la extinción del art. 255 es binaria (no cabe
  graduación judicial por capacidad de pago).
- **B7 — Inembargabilidad de pensiones/jubilación** en el concurso de la persona deudora.
- **B8 — Competencia y tipo de deudor** (empresa vs. persona; incompetencia de oficio si hay giro
  comercial activo).
- **B9 — Recursos de protección por DICOM** tras el discharge (eliminación de registros).
- **B10 — Arbitraje concursal** (arts. 295-297): casos reales ante el **CAM Santiago**.
- **B11 — Insolvencia transfronteriza, Ónix/Chang, Rol C-22090-2016** (15.º Juzgado Civil de
  Santiago): estado procesal y medidas.
- **B12 — «Inicio de actividades sin movimiento real»:** fallos de la CA de Santiago sobre la
  calidad de persona deudora pese a un inicio de actividades de primera categoría inactivo.

---

## §3 — Derecho comparado: confirmar en fuente oficial

- **C1 — Francia:** confirmar en **legifrance.gouv.fr** el número, la fecha y la vigencia de la
  **ordonnance n.º 2021-1193, de 15-09-2021** (clases de partes afectadas y arrastre entre clases).
- **C2 — España:** confirmar en **boe.es** la vigencia del **TRLC (2020)** y de la **Ley 16/2022, de
  5 de septiembre**, y los **umbrales del crédito público exonerable** (¿5.000 € totales y 50 % entre
  5.001 y 10.000 €, tope 10.000 € por entidad? ¿modificaciones posteriores?).
- **C3 — EE.UU.:** confirmar en **uscourts.gov / uscode** el **umbral de pasivo elegible del
  Subchapter V** vigente y los parámetros actuales del **means test** (cifras a 2026).
- **C4 — América Latina:** confirmar reformas vigentes citadas en el cuadro: **Brasil Ley
  14.112/2020**, **Colombia Ley 1116/2006 + Decreto 772**, **Perú** (sistema INDECOPI), **Argentina
  Ley 24.522**, **México** (LCM/IFECOM), **Uruguay Ley 18.387**. Indicar cualquier reforma posterior
  a 2020.

---

## §4 — Normativa y estadísticas chilenas (SUPERIR / CMF)

- **D1 — Boletín estadístico SUPERIR:** las **cifras vigentes** de procedimientos concursales
  (últimos datos disponibles a 2026): renegociaciones, liquidaciones de persona, MIPE, empresa;
  tasas de acuerdo por audiencia; participación femenina; concentración por región. URL del boletín.
- **D2 — Normativa en trámite:** proyectos de ley concursal en el Congreso (Cámara/Senado) a 2026,
  en especial el de **condonación/reestructuración del CAE** y cualquier reforma a la Ley 20.720.
- **D3 — Informe de deudas de la CMF:** denominación oficial vigente del reporte y vía de obtención
  (¿«Informe de Deudas CMF» en cmfchile.cl con ClaveÚnica?).
- **D4 — Renegociación:** confirmar el plazo/estructura de la **audiencia de determinación del
  pasivo** (art. 265) y la NCG vigente que la rige (¿NCG 28?).

---

## §5 — Entregable final

1. Todas las fichas del formato del §0, agrupadas por sección.
2. Un **bloque BibTeX** con las entradas nuevas o corregidas (tipos `@jurisdiction`,
   `@legislation`, `@legadminmaterial`, `@report`), **incluyendo la URL** de cada una.
3. La **lista consolidada de `NO ENCONTRADO`** con la base de pago sugerida para cada uno.

> Recordatorio final: prefiero un honesto `NO ENCONTRADO` con su enlace de búsqueda a un dato
> plausible sin fuente. La obra ya sufrió por datos inventados; la verificación es el objetivo.
