###########################################
# Script 10 - Matrizes bidimensionais
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
###########################################

# Criando um vetor atomico
x <- 1:6; x

# Verificando se o objeto 'x' tem atributo adicionado
attributes(x)

# Vamos verificar a classe do objeto x
sloop::s3_class(x)

# Adicionando o atributo dim
dim(x) <- c(2, 3) # 2 x 3 = 6 (Comp do vetor)
# attr(x, "dim") <- c(2, 3)

# Observando agora o comportamento do objeto 'x'
x

# Verificando novamente se 'x' tem atributo
attributes(x)

# Verificando a classe do objeto
sloop::s3_class(x)

# Criando uma matriz
matrix(1:6, 2, 3)

# Criando uma matriz
matrix(1:6, 2, 3, byrow = TRUE)


