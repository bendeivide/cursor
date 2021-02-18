###########################################
# Script 03 - Historia do R
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
###########################################

# Escopo lexico da linguagem R
#-----------------------------
# Instale o pacote lobstr
install.packages("lobstr")

# Exemplo 1: As funcoes tem acesso ao escopo em que foram criadas.
# Criando um nome "n" associado a um objeto 10 no escopo da funcao
n <- 10

# Criando um nome "funcao" associado a um objeto que é uma função
funcao <- function() {
  print(n)
}

# Imprimindo 'funcao'
funcao()

# Exemplo 2: As variaveis criadas ou alteradas dentro de uma funcao, permanecem na funcao.
# Criando um nome "n" associado a um objeto 10 no escopo da função
n <- 10
lobstr::obj_addr(n) # Identificador do objeto

# Criando um nome "funcao" associado a um objeto que é uma função
funcao <- function() {
  # Imprimindo n
  print(n)
  # Criando um nome "n" associado a um objeto 15 no corpo da função
  n <- 15
  # Imprimindo n
  print(n)
}
# Imprimindo 'funcao'
funcao()

# Imprimindo 'n'
n
lobstr::obj_addr(n) # Identificador do objeto

# Exemplo 3: As variáveis dentro de uma função permanecem nelas,
# exceto no caso em que a atribuição ao escopo seja explicitamente
# solicitada

# Criando um nome "n" associado a um objeto 10 no escopo da função
n <- 10
lobstr::obj_addr(n) # Identificador do objeto

# Criando um nome "funcao" associado a um objeto que é uma função
funcao <- function() {
  # Imprimindo n
  print(n)
  # Criando um nome "n" associado a um objeto 15 no corpo da função
  n <<- 15
  # Imprimindo n
  print(n)
}
# Imprimindo 'funcao'
funcao()

# Observe que depois de usar a superatribuição ("<<-") dentro da função,
#o nome "n" passou a estar associado ao número 15 e não mais ao número 10, observe
n
lobstr::obj_addr(n) # Identificador do objeto

# Exemplo 4: Por fim, embora a linguagem `R` tenha um escopo padrão,
# chamado ambiente global, os escopos de funções podem ser alterados.
# Criando um nome 'n' associado a um objeto 10 no escopo da função (ambiente global)
n <- 10
# Criando um nome 'funcao' associado a um objeto que é uma função criado no ambiete global
funcao <- function() {
  # Imprimindo n
  print(n)
}
# Imprimindo 'funcao' no ambiente global
funcao()
# Criando um novo ambiente
novo_ambiente <- new.env()
# Criando um nome "n" associado ao objeto 20 no ambiente  'novo_ambiente'
novo_ambiente$n <- 20
# Criando um objeto funcao no ambiente 'novo_ambiente'
environment(funcao) <- novo_ambiente
# Imprimindo 'funcao' no ambiente 'novo_ambiente'
funcao()
