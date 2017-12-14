#' @title Elimina característica de un dataframe
#' @description Función que permite eliminar características de un determinado dataset.
#' @param dataset Dataframe que contiene a las características que desea eliminar.
#' @param caracteristicas Vector que contiene los nombres de las características que desea eliminar.
#' @details Esta función fue creada principalmente para facilitar el trabajo analítico y la manipulación de data.
#' @return Dataframe sin características especificadas
#' @examples
#' caracteristicasInutiles <- c("nombre", "apellido")
#' fraude <- eliminaCaracteristica(fraude, caracteristicasInutiles)
#' @export
eliminaCaracteristica <- function(dataset, caracteristicas){
  dataset <- dataset[, !(names(dataset) %in% caracteristicas)]
  return(dataset)
}
