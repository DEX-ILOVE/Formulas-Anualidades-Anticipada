### Formulas-Anualidades-Anticipada
Este repositorio contiene una recopliacion de formulas y ejemplo relacionado con las anualidades anticipadas, un concepto financiero fundamental utlizando en la valoracion de flujos de efectivo que se reciben al incio de cada periodo.

#FUNCIONES DE ANUALIDADES ANTICIPADAS

Con el siguiente codigo usted puede cargar las funciones relativas a los calculos de anualidades anticipadas 

```{r}
https://raw.githubusercontent.com/DEX-ILOVE/Formulas-Anualidades-Anticipada/refs/heads/main/Anualidades%20Anticipadas.R
```
A continuacion se dan ejemplos del uso de las formulas correspondientes

Para ilustrar el ejemplo se tienen los siguientes valores 

### VALOR FUTURO

$ANUALIDAD$ = 10000

$TASA$ = 0.05

$N$ = 5

se realizan los calculos 
```{r}
#VALOR FUTURO CONOCIENDO LA ANUALIDAD: 
valor_futuro = function(anualidad, r, n) {
  return(anualidad * ((1 + r)^n) - 1) / r
#EJEMPLO DE USO 
 ##VALOR FUTURO 
VF = valor_futuro(1000, 0.05, 5)
print(VF)
```



