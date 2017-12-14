#' @title Visualización de datos NA
#' @description Función que exporta un .csv y permite visualizar los valores NA para cada variable
#' @param dataset Dataframe
#' @param path Lugar donde se exportará el archivo
#' @details Esta función fue creada principalmente para facilitar el trabajo de exploración de datos.
#' @return Retorna un dataframe detallando la cantidad de NAs para cada característica.
#' @examples
#' dataset <- V4DATOFIN_v1
#' path <-  "C:/Byte/Machine Learning/Predictivo Port Out/Primer análisis/CuadroResumenNA.csv"
#' view <- exportaValoresFaltantes(dataset, path)
#' @export


exportaValoresFaltantes <- function(dataset, path) {
  numcolumnas <- ncol(dataset)
  numfilas <- nrow(dataset)
  for (i in 1:numcolumnas) {
    #Identificamos el missing value:
    valoresFaltantes <- sum(is.na(dataset[i]))
    valoresNoFaltantes <- numfilas - valoresFaltantes
    
    if (i > 1) {
      missingvalues <- append(missingvalues, valoresFaltantes)
      nicevalues <- append(nicevalues, valoresNoFaltantes)
    } else{
      missingvalues <- valoresFaltantes
      nicevalues <- valoresNoFaltantes
    }
    
  }
  CuadroResumenNA <-
    cbind(
      Caracteristicas = names(dataset),
      Valores_faltantes = missingvalues,
      Valores_no_faltantes = nicevalues
    )
  #Exportando data
  write.csv(
    CuadroResumenNA,
   path
  )
  return(CuadroResumenNA)
  
}