##############################################
# Script 20 - Carregando e anexando um pacote
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
##############################################

# Variavel resposta
rv <- c(100.08, 105.66, 97.64, 100.11, 102.60, 121.29, 100.80,
        99.11, 104.43, 122.18, 119.49, 124.37, 123.19, 134.16,
        125.67, 128.88, 148.07, 134.27, 151.53, 127.31)

# Tratamento
treat <- factor(rep(LETTERS[1:5], each = 4))

# Anava
res     <- anova(aov(rv~treat))
DFerror <- res$Df[2]
MSerror <- res$`Mean Sq`[2]

# Aplicando testes
results <- midrangeMCP::MRtest(y = rv,
                               trt = treat,
                               dferror = DFerror,
                               mserror = MSerror,
                               alpha = 0.05,
                               main = "PCMs",
                               MCP = c("all"))

# Caminho de busca
search()

# Carregando e chamando uma função de um pacote
midrangeMCP::MRwrite(results, extension = "latex")

# Verificando novamente o caminho de busca
search()

# Carregando e anexando um pacote
library(midrangeMCP)

# Verificando novamente o caminho de busca
search()



# Chamando uma funcao do pacote (Execute no R ou RStudio)
guimidrangeMCP()








