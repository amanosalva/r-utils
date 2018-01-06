#Función que compara 3 gráficos para una variable categórica en los datasets prepago, postpago, control
comparaVariablesCategoricas <- function(nombreVariable, dataset_prepago, dataset_postpago, dataset_control){

  par(mfrow=c(3,1))

  barplot(table(dataset_prepago[names(V4DATOFIN_pure) == nombreVariable]))
  title(paste(nombreVariable," - Prepago"))
  barplot(table(dataset_postpago[names(V4DATOFIN_pure) == nombreVariable]))
  title(paste(nombreVariable," - Postpago"))
  barplot(table(dataset_control[names(V4DATOFIN_pure) == nombreVariable]))
  title(paste(nombreVariable," - Control"))


}
