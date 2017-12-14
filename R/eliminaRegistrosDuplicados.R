#' @title Elimina registros duplicados
#' @description Función que elimina todos los registros duplicados de un dataset.
#' @param dataset dataframe que contiene todos los registros
#' @return dataset sin registros duplicados
#' @export eliminaRegistrosDuplicados
#' @examples
#' FraudeCrediticioDF <- eliminaRegistrosDuplicados(FraudeCrediticioDF)
#'
#Byte
#autor: amanosalva
#fecha: 2017/09/08

eliminaDuplicados = function(dataset){
  if(anyDuplicated(dataset) != 0){
    while(anyDuplicated(dataset) != 0){
      dataset <- dataset[!duplicated(dataset), ]
    }
    message("Registros duplicados eliminados")

  }else{
    message("No existen registros duplicados en el dataframe")
  }
 return(dataset)
}
