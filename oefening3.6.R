
# selecteer de rijen die female zijn
ais[ais$sex=='f',]

# selecteer de rijen die sporten row en netball bevatten
# daarna na de "," selecteert men de kolommen die u wilt tonen
ais[ais$sport=='Row' | ais$sport=='Netball',c("sex",'wt')]