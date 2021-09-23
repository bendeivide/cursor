###########################################
# Script 09 - Vetores
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
###########################################

# Vetores de comprimento 1 (nomes especiais)
# ------------------------------------------
# divisao de um numero por zero (+ infinito)
x <- 50 / 0; x
# divisao de um numero por zero (- infinito)
-50 / 0
# Resultado sem número do tipo NaN
x - x

# Criando um vetor 'double'
vetor.num <- c(1, 2, 3, 4, 5); vetor.num
typeof(vetor.num)

# Criando um vetor 'integer'
vetor.num2 <- c(1L, 2L, 3L, 4L, 5L); vetor.num; typeof(vetor.num2)

# Criando uma sequência de 1 a 5
vetor.num3 <- 1:5; vetor.num3; typeof(vetor.num3)

# Diferenca entre vetores 'double' e 'integer'
vetor.num <- c(1, 2, 3, 4, 5)
vetor.num2 <- c(1L, 2L, 3L, 4L, 5L)
vetor.num3 <- 1:5
# Sao identicos?
vetor.num == vetor.num2
vetor.num == vetor.num3
vetor.num2 == vetor.num3
# Memoria:
lobstr::obj_size(vetor.num)
lobstr::obj_size(vetor.num2)
lobstr::obj_size(vetor.num3)

# Vetores sequencias com menor armazenamento de memoria
lobstr::obj_size(1:10)
lobstr::obj_size(1:10000)
lobstr::obj_size(1:1000000)
lobstr::obj_size(c(1:10))
lobstr::obj_size(c(1:10000))
lobstr::obj_size(c(1:1000000))

# manipulando vetores
typeof(c(1, 2, 3, NA))
typeof(c(1, 2, 3, NA))
typeof(c("c", "b", "a", NA))

# Vetor numerico de comprimento 0
v1 <- numeric(0); length(v1)
v2 <- character(0); length(v2)
v3 <- logical(0); length(v2)

# Vetor numerico de comprimento 0
v1 <- numeric(0); length(v1)
v2 <- character(0); length(v2)
v3 <- logical(0); length(v2)

# Vetor numerico de comprimento 0
v1 <- numeric(0)
v2 <- character(0)
v3 <- logical(0)
# Inserimos 3 elementos em v1 e depois imprimos o seu resultado
v1[1] <- 5; v1[2] <- 3; v1[3] <- 10; v1; length(v1)

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

# Aritmética e outras operações
# -----------------------------
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

# Soma de vetores
c(4, 5, 6) + c(1, 2, 3)

# Subtracao de  vetores
c(4, 5, 6) + c(1, 2, 3)

# Multiplicacao dois vetores
c(4, 5, 6) * c(1, 2, 3)

# Divisao de dois vetores
c(4, 5, 6) / c(1, 2, 3)

# Soma de vetores de comprimento diferente
1:10 + 3:10

# Operdores logicos
# -----------------

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

# Operadores Booleanos
# --------------------
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


