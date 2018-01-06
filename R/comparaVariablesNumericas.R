#Función que compara 3 gráficos para una variable numérica en los datasets prepago, postpago, control
comparaVariablesNumericas <- function(nombreVariable, dataset_prepago, dataset_postpago, dataset_control){

  par(mfrow=c(3,1))

  hist(unlist(dataset_prepago[names(V4DATOFIN_pure) == nombreVariable]), main = paste(nombreVariable," - Prepago"), xlab = nombreVariable, ylab = "Frecuencia")
  hist(unlist(dataset_postpago[names(V4DATOFIN_pure) == nombreVariable]), main = paste(nombreVariable," - Postpago"), xlab = nombreVariable, ylab = "Frecuencia")
  hist(unlist(dataset_control[names(V4DATOFIN_pure) == nombreVariable]), main = paste(nombreVariable," - Control"), xlab = nombreVariable, ylab = "Frecuencia")


}
