# Formulas-Anualidades-Anticipada
Este repositorio contiene una recopliacion de formulas y ejemplo relacionado con las anualidades anticipadas, un concepto financiero fundamental utlizando en la valoracion de flujos de efectivo que se reciben al incio de cada periodo.

valor_futuro = function(anualidad, r, n) {
  return(anualidad * ((1 + r)^n) - 1) / r
}
 ##VALOR FUTURO 
VF = valor_futuro(1000, 0.05, 5)
print(VF)


