#' @title Elimina caracter�stica de un dataframe
#' @description Funci�n que permite eliminar caracter�sticas de un determinado dataset.
#' @param dataset Dataframe que contiene a las caracter�sticas que desea eliminar.
#' @param caracteristicas Vector que contiene los nombres de las caracter�sticas que desea eliminar.
#' @details Esta funci�n fue creada principalmente para facilitar el trabajo anal�tico y la manipulaci�n de data.
#' @return Dataframe sin caracter�sticas especificadas
#' @examples
#' caracteristicasInutiles <- c("nombre", "apellido")
#' fraude <- eliminaCaracteristica(fraude, caracteristicasInutiles)
#' @export
eliminaCaracteristica <- function(dataset, caracteristicas){
  dataset <- dataset[, !(names(dataset) %in% caracteristicas)]
  return(dataset)
}