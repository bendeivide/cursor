###########################################
# Script 08 - Objetos
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
###########################################

# Criando um objeto
x <- 10

# Identificador na memoria de x
lobstr::obj_addr(x)

# Verifique que apenas mais um nome se associa ao objeto 10
y <- x
lobstr::obj_addr(y)

# Formas de atribuicao
x <- 10
10 -> x

# outra forma de associar um nome ao objeto
assign("m", 15)
m

# mais de um comando por linha
x <- 10; w <- 15; x; w

# Objeto modo caractere
x <- "Ben"; mode(x); typeof(x)

# Objeto modo numerico/integer
y <- 10L; mode(y); typeof(y)

# Objeto modo numerico/double
y2 <- 10; mode(y2); typeof(y2)

# Objeto modo logico
z <- TRUE; mode(z); typeof(z)

# Objeto modo complexo
w <- 1i; mode(w); typeof(w)

# 10 eh igual a 10L ?
10 == 10L

# 10 eh identico a 10L ?
identical(10, 10L)

# Criacao de dois objetos de modo numerico
a <- numeric(1); b <- double(1)
# Verificando o modo
mode(a); mode(b)

# Verificando se 'a' e 'b' sao identificos
identical(a, b)



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

# Coersao para 'character'; Criando um objeto x e imprimindo o seu resultado
x <- c("Nome", 3, 4, 5);x

# Objeto de modo numerico
minha_idade <- 35
mode(minha_idade)

# Coersão manual do objeto para modo caractere (`string`)
minha_idade <- as.character(minha_idade)
mode(minha_idade)

# Verificando se o objeto tem modo 'character'
is.character(minha_idade)





















