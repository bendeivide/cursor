# Aula 24: Aplicacao R-Tcl/tk

# Anexando o pacote
library(tcltk)

# Janela principal
main <- tktoplevel(width = 400, height = 300)
tkpack.propagate(main, FALSE)

# Texto inicial
tkpack(tklabel(main, text = "Soma de dois números inteiros"))

# Quadro 1
tkpack(q1 <- tkframe(main), side = "top")
tkpack(tklabel(q1, text = "Insira o primeiro número: ", padx = 3), side = "left", anchor = "e")


# Entrada 1
var1 <- tclVar("Insira um número inteiro")
tkpack(entry1 <- tkentry(q1, textvariable = var1, width = 25), side = "left", anchor = "ne")

# Quadro 2
tkpack(q2 <- tkframe(main), side = "top")
tkpack(tklabel(q2, text = "Insira o segundo número: ", padx = 3), side = "left", anchor = "e")

# Entrada 2
var2 <- tclVar("Insira um número inteiro")
tkpack(entry2 <- tkentry(q2, textvariable = var2, width = 25), side = "left", anchor = "ne")
# Botao
tkpack(botao <- tkbutton(main, text = "Somar dois números"), side = "top")
# Funcao auxiliar
f1 <- function(...) {
  if ((is.na(as.numeric(tclvalue(var1))) | is.na(as.numeric(tclvalue(var2))))) {
    tkpack(tklabel(main, text = "Insira Valores numéricos!"), side = "top")
  } else {
    res <- as.numeric(tclvalue(var1)) + as.numeric(tclvalue(var2))
    tkpack(tklabel(main, text = paste("A soma é igual a ", res)), side = "top")
  }
}
# Acao ao Botao
tkbind(botao, "<ButtonRelease>", f1)
