#############################################
# Script 08 - Objetos
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
#############################################

# Comando 1 - atribuicao
# ----------------------
x <- 10

# Comando 2 - identificador de memoria
# ------------------------------------
lobstr::obj_addr(x)

# Comando 3
# ---------
y <- x
lobstr::obj_addr(y)

# Comando 4 - Duas formas
# -----------------------
x <- 10
10 -> x

# Comando 5
# ---------
lobstr::obj_addr(x) # id1
x <- 30 # objeto
lobstr::obj_addr(x) # id2

# Comando 6 - ';'
# ---------------
x <- 10; w <- 15; x; w

# Comando 7
# ---------
# Criamos um objeto de classe 'data.frame'
dados <- data.frame(a = 1:3, b = LETTERS[1:3])

# Imprimindo na tela
dados

# Verificando sua classe
class(dados)

# Verificando o efeito do objeto 'dados',
# sem o efeito da classe
dados2 <- unclass(dados); dados2

# Qual a classe desse objeto sem o efeito da
# classe 'data.frame'
class(dados2)

# Comandos 8
# ----------
# Objeto modo caractere
x <- "Ben"; mode(x)

# Objeto modo numerico
y <- 10L; mode(y)

# Objeto modo numerico
y2 <- 10; mode(y2)

# Objeto modo logico
z <- TRUE; mode(z)

# Objeto modo complexo
w <- 1i; mode(w)

# Comandos 9
# ----------
# Objeto modo caractere
x <- "Ben"; typeof(x)

# Objeto modo numerico (Inteiro)
y <- 10L; typeof(y)

# Objeto modo numerico (Real)
y2 <- 10; typeof(y2)

# Objeto modo logico
z <- TRUE; typeof(z)

# Objeto modo complexo
w <- 1i; typeof(w)

# Comandos 10
# -----------
# Vetor numérico vazio de comprimento 1
numeric(0)

# Verificando o seu modo
mode(numeric(0))
typeof(numeric(0))

# Vetor caractere vazio de comprimento 1
character(0)

# Verificando o seu modo
mode(character(0))
typeof(character(0))

# Comandos 11 - Inteiro ou double?
# -----------
# 10 eh igual a 10L ?
10 == 10L
identical(10, 10L)

# Comandos 12
# ----------
# Criacao de dois objetos de modo numerico
a <- numeric(1); b <- double(1)
# Verificando o modo
mode(a); mode(b)
# Verificando se 'a' e 'b' sao identificos
identical(a, b)

# Comandos 13
# -----------
sloop::s3_class(1)
sloop::s3_class(1L)

# Comandos 14
# -----------
# Criando um objeto de atributo classe 'factor':
fator <- factor("a"); fator

# O atributo classe muda a forma dos elementos. Veja quando retiramos o atributo
# classe 'factor', o objeto retorna o valor 1
unclass(fator)

# Para confirmar essa afirmacao anterior, vejamos o modo
mode(fator)
typeof(fator)

# Apesar do resultado retornar 1, veja que ele nao se comporta como numerico
is.numeric(fator)
is.integer(fator)

# Comandos 15 - Comprimento
# -----------
# Vetor de comprimento 5
v1 <- 1:5

# Vetor de comprimento 3
v2 <- c("Ben", "Maria", "Lana")

# Vetor de comprimento quatro
v3 <- c(TRUE, FALSE, TRUE, TRUE)

# Vejamos o comprimento dos vetores
length(v1)
length(v2)
length(v3)

# Comandos 16 - Coersao pelo R
# ---------------------
# Criando um objeto x e imprimindo o seu resultado
x <- c("Nome", 3, 4, 5);x

# Comandos 17 - Coersao pelo usuario
# ----------------------------------
# Objeto de modo numerico
minha_idade <- 35
mode(minha_idade)

# Coersão do objeto para modo caractere (`string`)
minha_idade <- as.character(minha_idade)
mode(minha_idade)

# Verificando se o objeto tem modo 'character'
is.character(minha_idade)

# Comandos 18 - Valores especiais
# -------------------------------
# divisao de um numero por zero (+ infinito)
x <- 50 / 0; x
# divisao de um numero por zero (- infinito)
-50 / 0
# Resultado sem número do tipo NaN
x - x

# Comandos 19 - Vetores longos
# ----------------------------
# Criando um vetor 'double'
vetor.num <- c(1, 2, 3, 4, 5); vetor.num
typeof(vetor.num)

# Criando um vetor 'integer'
vetor.num2 <- c(1L, 2L, 3L, 4L, 5L); vetor.num; typeof(vetor.num2)

# Criando uma sequência de 1 a 5
vetor.num3 <- 1:5; vetor.num3; typeof(vetor.num3)

# Sao iguais?
vetor.num <- c(1, 2, 3, 4, 5)
vetor.num2 <- c(1L, 2L, 3L, 4L, 5L)
vetor.num3 <- 1:5
#---
vetor.num == vetor.num2
vetor.num == vetor.num3
vetor.num2 == vetor.num3

# Comandos 20
# -----------
# Objetos:
vetor.num <- c(1, 2, 3, 4, 5)
vetor.num2 <- c(1L, 2L, 3L, 4L, 5L)
vetor.num3 <- 1:5
# Memoria:
lobstr::obj_size(vetor.num)
lobstr::obj_size(vetor.num2)
lobstr::obj_size(vetor.num3)

# Comandos 21
# -----------
# Tamanho de memoria dos objetos
lobstr::obj_size(1:10)
lobstr::obj_size(1:10000)
lobstr::obj_size(1:1000000)
lobstr::obj_size(c(1:10))
lobstr::obj_size(c(1:10000))
lobstr::obj_size(c(1:1000000))

# Comandos 22 - NA
typeof(c(1, 2, 3, NA))
typeof(c(1, 2, 3, NA))
typeof(c("c", "b", "a", NA))

# Comandos 23 - Vetores de comprimento
# ------------------------------------
# Vetor numerico de comprimento 0
v1 <- numeric(0); length(v1)
v2 <- character(0); length(v2)
v3 <- logical(0); length(v2)
# Inserimos 3 elementos em v1 e depois imprimos o seu resultado
v1[1] <- 5; v1[2] <- 3; v1[3] <- 10; v1; length(v1)

# Comandos 24 - Indexacao
# -----------------------
# Vetor numerico de comprimento 0
v1 <- numeric(0)
v2 <- character(0)
v3 <- logical(0)

# Inserimos 3 elementos em v1 e depois imprimos o seu resultado
v1[1] <- 5; v1[2] <- 3; v1[3] <- 10

# Imprimindo apenas o primeiro valor
v1[1]

# Imprimindo os dois ultimos
v1[2:3]; v1[c(2, 3)]

# Imprimindo todos
v1

# Comandos 25 - Operacoes aritmericas
# -----------------------------------
# Soma de dois vetores
2 + 3
# Exceto pela sintaxe, '+' eh uma chamada de funcao
`+`(2, 3)

# Subtracao de dois vetores
3 - 2
# Exceto pela sintaxe, '-' eh uma chamada de funcao
`-`(3, 2)

# Multiplicacao de dois vetores
3 * 2
# Exceto pela sintaxe, '*' eh uma chamada de funcao
`*`(3, 2)

# Divisao de dois vetores
3 / 2
# Exceto pela sintaxe, '/' eh uma chamada de funcao
`/`(3, 2)

# Comandos 26
# -----------
# Soma de vetores
c(4, 5, 6) + c(1, 2, 3)

# Subtracao de  vetores
c(4, 5, 6) + c(1, 2, 3)

# Multiplicacao dois vetores
c(4, 5, 6) * c(1, 2, 3)

# Divisao de dois vetores
c(4, 5, 6) / c(1, 2, 3)

# Comandos 27
# -----------
# Soma de vetores de comprimento diferente
1:10 + 3:10

# Comandos 28 - Operadores logicos
# --------------------------------
# Operador '>' entre vetores de comprimento 1
1 > 3

# Operador '<' com vetor de comprimento maior que 1
1 < c(0, 1, 3)

# Operador '==' entre vetores
c(1, 2, 3) == c(3, 2, 1)

# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
1 %in% c(3, 4, 5)

# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
c(1, 2) %in% c(3, 4, 5)

# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
c(1, 2, 3) %in% c(3, 4, 5)

# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
c(1, 2, 3, 4) %in% c(3, 4, 5)

# Comandos  29 - Opeardores booleanos
# -----------------------------------
# Criando objetos
x <- 1:3
y <- 1:3
z <- c(1, 2, 4)

# Primeira condicao
x == y

# Segunda condicao
y == z

# Terceira condicao
x == y & y == z
