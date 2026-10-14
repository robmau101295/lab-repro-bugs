# lab-repro-bugs

Reproducciones mínimas de los hallazgos de la versión actual de la plantilla en GitHub.
Cada workflow se corre a mano (**Actions → workflow → Run workflow**) y no necesita AWS.

| Workflow | Hallazgo | Resultado esperado |
|---|---|---|
| `h1-plan-exitcode.yml` | H1: `-detailed-exitcode` + `bash -e` | "Patrón actual" falla con exit code 2; "Corregido" pasa |
| `h2-h3-versiones-terraform.yml` | H2: plan y apply con versiones distintas. H3: ¿1.6.5 lee un state escrito por 1.12.0? | H2 falla en el apply. H3: anótalo tú |
| `h4-environment-inexistente.yml` | H4: environment inexistente = sin aprobación | El primero corre solo; el segundo espera |
| `h5-cadena-ambientes.yml` | H5: dev sin cambios bloquea qa | "ACTUAL" se salta qa; "CORREGIDO" llega a qa |
| `h6-tokens-faltantes.yml` | H6: tokens de variable groups que no llegan | El plan muestra `#{REDIS_AUTH}#` literal |
| `h8-variable-con-punto.yml` | H8: nombres con punto | La variable con punto llega vacía |

Estos workflows son ejemplos escritos para el lab, no copias del código de la empresa.
