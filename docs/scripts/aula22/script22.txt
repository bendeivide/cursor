############################################
# Script 22 - Usando os operadores :: e :::
# Curso R - Programacao em R (Nivel Basico)
# Prof. Ben Deivide
############################################

# Instale o pacote SMR
install.packages(SMR) # Descomente a linha de comando para instalar

# Carregando e chamando funcoes exportadas do pacote SMR
SMR::pSMR(q = 2, size = 10, df = 3)

# Carregando e chamando funcoes nao exportadas ao pacote
SMR:::GaussLegendre(size = 4)



