##CALCULOS DE ANUALIDADES ANTICIPADAS

#VALOR FUTURO CONOCIENDO LA ANUALIDAD 
valor_futuro = function(anualidad, r, n) {
  return(anualidad * ((1 + r)^n) - 1) / r
}

#ANUALIDAD
anualidad = function(valor_futuro, r, n){
  return(valor_futuro * (r / ((1 + r)^n - 1)))
}

#NUMERO DE PAGOS
num_pagos = function(valor_futuro, anualidad, r){
  return(log((valor_futuro * r / anualidad) + 1) / log(1 + r))
}

#TASA DE PERIODO 
tasa_periodo = function(r, n){
  return(((1 + r)^n -1) / r)
}

#VALOR ACTUAL
valor_actual = function(anualidad, r, n){
  return(anualidad * ((1 -(1 + r)^-n) / r))
}

#ANUALIDAD(VALOR ACTUAL)
anualidad_valor_actual = function(valor_actual, r, n){
  return(valor_actual * ( r  / (1-(1 + r)^-n)))
}

#NUMERO DE PAGOS (valor actual)
num_pagos_valor_actual = function(anualidad, r, n){
  return(anualidad * (1 +r) * (1-(1+r)^-n) / r)
}



#TASA DE PERIODO(VALOR ACTUAL)
tasa_periodo_valor_actual_anticipada = function(valor_actual, anualidad, n) {
  if (valor_actual <= 0 || anualidad <= 0 || n <= 0) {
    stop("Valor Actual, Anualidad y n deben ser positivos.")
  }
  return((anualidad / (valor_actual * (1 + r)))^(1 / n) - 1)
}










#EJEMPLO DE USO 
 ##VALOR FUTURO 
VF = valor_futuro(1000, 0.05, 5)
print(VF)


#ANUALIDAD
A = anualidad(10000, 0.05, 5)
print(A)

#NUMERO DE PAGOS
 NP = num_pagos(10000, 1000, 0.05)
 print(NP)
 
 
 #TASA DE PRIODO
 TP = tasa_periodo(0.05, 5)
 print(TP)
 
 #VALOR ACTUAL
 VA = valor_actual(1000, 0.05, 5)
 print(VA)
 
 #ANUALIDAD(VALOR ACTUAL)
 A_VA = anualidad_valor_actual(5000, 0.05, 5)
 print(A_VA)
 
 #NUMERO DE PAGOS(VALOR ACTUAL)
 NP_VA = num_pagos_valor_actual(5000, 200, 0.05)
 print(NP_VA)
 
 #TASA DEL PERIODO(VALOR ACTUAL)
 TP_VA = tasa_periodo_valor_actual(500, 1000, 5)
 print(TP_VA)