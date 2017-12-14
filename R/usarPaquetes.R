#' @title Instalación y activación de paquetes - librerías
#' @description Función que instala (solo si es necesario) y activa las librerías necesarias para el buen funcionamiento del programa.
#' @param paquetes String o vector que contiene los paquetes que se desea activar.
#' @return - Librerías y paquetes necesarios instalados y activados.
#' @export usarPaquetes
#' @examples
#' paquetes <- c("FSelector", "entropy")
#' usarPaquetes(paquetes)
#'
#Byte
#autor: amanosalva
#fecha: 2017/09/08
usarPaquetes<-function(p){

  activarPaquete <- function(p) {
    if (!is.element(p, installed.packages()[,1]))
      install.packages(p, dep = TRUE)
    require(p, character.only = TRUE)
  }


  for(i in 1:length(p)) {
    activarPaquete(p[i])
  }

}
