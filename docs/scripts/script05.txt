#############################################
# Script 05 - Comandos no R e Ambiente Global
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
#############################################


# Prompt de comando
#------------------

# Comando para alterar o simbolo do prompt de comando
options(prompt = "R> ")
# Toda vez que o console iniciar, começarar por 'R>'
10
# Retornando o simbolo padrao
options(prompt = "> ")

# Nomes sintaticos e nao-sintaticos
#----------------------------------

# Nome não sintatico
.123 <- 50

# Qual a sugestao de nome sintatico para '.123'?
make.names(.123)

# Comandos elementares
#---------------------

## Expressoes
10 + 15

# Mensagem de erro: separador decimal eh ponto
# e nao virgula
10,5 + 15,5

## Atribuicoes

# Foi criado um objeto do tipo caractere e o nome "meu_nome" foi associado a ele
# O 'R' avalia essa expressão, mas não imprime no console!
meu_nome <- "Ben"

# Para imprimir o resultado da expressão, digitamos o nome "meu_nome" no console
# e apertamos o botão ENTER do teclado!
meu_nome

# Execucao de mais de um comando por linha
#-----------------------------------------

# Uma linha de comando por vez
meu_nome <- "Ben" # Criamos e associamos um nome ao objeto
meu_nome # Imprimos o objeto

# Tudo em uma linha de comando
meu_nome <- "Ben"; meu_nome


# Uma linha de comando em mais de uma linha de execucao
# aparecera o simbolo "+" ao inves de ">"

(10 + 10) /
  2

# Ambiente Global

# Funcao para verificar os objetos criados no ambiente
# global
ls()


