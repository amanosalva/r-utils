#Exporta resumen

exportaResumenEstadistico <- function(dataset, path_destino){

  resumen <- summary(dataset)
  summary(dataset)
  write.table(resumen, path_Destino, sep=",", row.names=FALSE, col.names=TRUE, quote=FALSE)

}
