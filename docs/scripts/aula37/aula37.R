# Aula 37 - Revisao sobre funcoes

t <- 2

x <- function(a) {
  UseMethod("x")
  u <- 1
  o <- 2
  y <- function(o) {
    o^2 * t
  }
  res <- u + a + y(o)
  return(res)
}

x(2)
