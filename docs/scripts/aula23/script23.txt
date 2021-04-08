############################################
# Script 23 - Ambientes e Caminho de busca
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
############################################

# Nomes no ambiente global
ls()

# Comparando os ambientes
identical(environment(), .GlobalEnv)

# Forma errada de comparar ambientes (Erro...)
environment() == .GlobalEnv

# Criando objetos no ambiente global
b <- 2; a <- "Ben"; x <- TRUE

# Verificando os nomes no ambiente global
ls()

# Acessando o objeto "a"
.GlobalEnv$a
.GlobalEnv[["a"]]

# Acessando o primeiro nome (Erro...)
.GlobalEnv[[1]]

# Criando objetos no ambiente global
rm(list = ls()) # removendo os nomes de .GlobalEnv
b <- 2; a <- "Ben"; x <- TRUE

# Verificando os nomes no ambiente global
ls()

# Criando um objeto ambiente no ambiente global
amb1 <- new.env()

# Inserindo nomes nesse no ambiente "amb1"
amb1$d <- 3; amb1$e <- "FALSE"

# Verificando nomes no ambiente global
ls()

# Verificando nomes no ambiente "amb1"
ls(envir = amb1)

# Ambiente pai
parent.env(amb1)
parent.env(emptyenv()) # ambiente vazio nao tem pai

# Criando o objeto x e o imprimindo
x <- 0; x

# Criando uma funcao com a superatribuicao
f1 <-  function() {
  # Obj2
  x <- 1
  # Modificando x do ambiente global
  x <<- 2
  # Imprimindo o ambiente de execucao
  env <- environment()
  # Imprimindo o Obj2
  res <- list(x = x, "Ambiente de execução" = env, "Ambiente Pai" = parent.env(env))
  # Retornando a lista
  return(res)
}
# Imprimindo f1
f1()

# Imprimindo x
x

# Imprimindo o ambiente envolvente de f1
environment(f1)

# Imprimindo os nomes do ambiente global
ls()

# Novo comeco...
# Chamada 1
f1()$`Ambiente de execução`
# Chamada 2
f1()$`Ambiente de execução`
# Chamada 3
f1()$`Ambiente de execução`

# Verificando os nomes no ambiente global
rm(list = ls()) # removendo os nomes do ambiente global
ls()



# Criando uma funcao
f2 <-  function() {
  x <<- 2
}

# Executando f2
f2()

# Verificando novamente os nomes no ambiente global
ls()

# Verificando o valor de x
x

# Funcao contador
contador <- function() {
  i <- 0
  env1 <- environment()
  aux <- function() {
    # do something useful, then ...
    i <<- i + 1
    env2 <- environment()
    res2 <- list(i = i, `AmbExec_aux` = env2, `AmbExec_contador` = env1)
    return(res2)
  }
}
# Chamada de funcao
contador1 <- contador()
contador1()
contador1()
contador1()

# Chamada de funcao
contador2 <- contador()
contador2()


# Caminho de busca
search()


# Instalando pacote
install.packages(SMR)
# Anexando o pacote SMR
library(SMR)
# Verificando o caminho de busca
search()

# Carregando o pacote midrangeMCP
library(midrangeMCP)
# Verificando o caminho de busca
search()


# Instalando pacote
install.packages(rlang)
# Criando um ambiente
amb2 <- new.env()
# Verificando seus parentais
rlang::env_parents(env = amb2, last = emptyenv())





# Criando uma funcao
f3 <- function() x + 1

# Modificando o ambiente envolvente de f3
environment(f3) <- emptyenv()

# Dependencias externas da funcao f3
install.packages(codetools)
codetools::findGlobals(f3)

# Chamando a funcao f3
f3()

# objeto quadro de dados
dados <- data.frame(sd = 1:3, var = (1:3)^2)
# Caminho de busca
search()

# anexando "dados" ao caminho de busca
attach(dados)
# Verifi
# cando novamente o caminho de busca
search()

# Imprimindo sd
sd

# Desanexando "dados"
detach(dados)
# Imprimindo sd
sd
















































