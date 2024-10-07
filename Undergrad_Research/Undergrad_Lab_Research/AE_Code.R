##imported data from file X, using R import button. 

#now make of plot of a bunch of graphs that were wrong. 

plot('# of herbs indiv', 'neighnorhood.percent.soca')
attach(AE_Fan_Survey_Data_2016)
search(AE_Fan_Survey_Data_2016)
plot(AE_Fan_Survey_Data_2016$neighborhood.percent.soca~AE_Fan_Survey_Data_2016$`# of herb indiv`)
plot (AE_Fan_Survey_Data_2016$`# of herb indiv`~AE_Fan_Survey_Data_2016$neighborhood.percent.soca, xlab = 'SOCA Frequency (# of SOCA plants/Total # of plants)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solanum frequency on Solanum herbivore abundance')
abline (lm(AE_Fan_Survey_Data_2016$neighborhood.percent.soca~AE_Fan_Survey_Data_2016$`# of herb indiv`)
plot (AE_Fan_Survey_Data_2016$`# of herb indiv`~AE_Fan_Survey_Data_2016$'stem#')    
plot (AE_Fan_Survey_Data_2016$`# of herb indiv`~AE_Fan_Survey_Data_2016$'stem#', xlab = 'SOCA Density (#stems/area)', ylab = 'Number of Herbivore Individuals', main = 'The effect of Solanum density on Solanum herbivore abundance')
plot (AE_Fan_Survey_Data_2016$`# of enemies`~AE_Fan_Survey_Data_2016$neighborhood.percent.soca, xlab = 'SOCA Frequency (# of SOCA plants/Total # of plants)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solanum frequency on Solanum enemy abundance')
plot (AE_Fan_Survey_Data_2016$`# of enemies`~AE_Fan_Survey_Data_2016$'stem#', xlab = 'SOCA Density (#stems/area)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solanum density on Solanum enemy abundance')
subset (AE_Fan_Survey_Data_2016, AE_Fan_Survey_Data_2016$species == 'soca')
subset (AE_Fan_Survey_Data_2016, AE_Fan_Survey_Data_2016$species == 'soca', plot (AE_Fan_Survey_Data_2016$`# of herb indiv`~AE_Fan_Survey_Data_2016$'stem#', xlab = 'SOCA Density (#stems/area)', ylab = 'Number of Herbivore Individuals', main = 'The effect of Solanum density on Solanum herbivore abundance'))
withr
(AE_Fan_Survey_Data_2016[AE_Fan_Survey_Data_2016$species == 'soca'], plot (AE_Fan_Survey_Data_2016$`# of herb indiv`~AE_Fan_Survey_Data_2016$'stem#', xlab = 'SOCA Density (#stems/area)', ylab = 'Number of Herbivore Individuals', main = 'The effect of Solanum density on Solanum herbivore abundance')
AE_Data <- AE_Fan_Survey_Data_2016
subset (AE_Data, AE_Data$species == 'soca')
view (AE_Data, AE_Data$species == 'soca')
View (AE_Data)

plot (SOCA_Data$`# of herb indiv`~SOCA_Data$'stem#', xlab = 'SOCA Density (#stems/area)', ylab = 'Number of Herbivore Individuals', main = 'The effect of Solanum density on Solanum herbivore abundance')
subset (AE_Data, AE_Data$species == 'soal',)
SOAl_Data <- subset (AE_Data, AE_Data$species == 'soal',)
plot (SOCA_Data$`# of enemies`~SOCA_Data$'stem#', xlab = 'SOCA Density (#stems/area)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solanum density on Solanum enemy abundance')
plot (SOCA_Data$`# of herb indiv`~SOAL_Data$'stem#', xlab = 'SOAL Density (#stems/area)', ylab = 'Number of Herbivore Individuals', main = 'The effect of Solidago density on Solanum herbivore abundance')

##Imported correct dataset with calculated densities. 

AE_Data <- AE_Fan_Survey_Data_2016 
##plot frequency vs number of herbs on soca.
##Rename x axis 

plot (AE_Data$`# of herb indiv`~AE_Data$'neighborhood.percent.by.size.soca',data = subset (AE_Data$species == 'soca') xlab = 'SOCA Frequency (# of SOCA plants/Total # of plants)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solanum frequency on Solanum herbivore abundance')
##rename subset
SOCA_Data <- subset (AE_Data, AE_Data$species == 'soca',)

plot (SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca', xlab = 'SOCA Frequency (SOCA biomass/Total biomass)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solanum frequency on Solanum herbivore abundance')
##plot soca density vs number of herbs on soca 

plot (SOCA_Data$`# of herb indiv`~SOCA_Data$'Soca_biomass', xlab = 'SOCA Density (biomass/area)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solanum density on Solanum herbivore abundance')

##plot soal density vs number of herbs on soca
plot (SOCA_Data$`# of herb indiv`~SOCA_Data$'Soal_biomass', xlab = 'SOAL Density (biomass/area)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solidago density on Solanum herbivore abundance')

##plot frequency vs number of enemies on soca 
plot (SOCA_Data$`# of enemies`~SOCA_Data$'neighborhood.percent.by.size.soca', xlab = 'SOCA Frequency (SOCA biomass/Total biomass)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solanum frequency on the abundance of neighboring enemies on Solanum')

##plot soca density vs number of enemies on soca
plot (SOCA_Data$`# of enemies`~SOCA_Data$'Soca_biomass', xlab = 'SOCA Density (biomass/area)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solanum density on the abundance of neighboring enemies on Solanum')

##plot soal density vs number of enemies on soca 
plot (SOCA_Data$`# of enemies`~SOCA_Data$'Soal_biomass', xlab = 'SOAL Density (biomass/area)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solidago density on the abundance of neighboring enemies on Solanum')

##fitting line 

model1=lm(SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca')

plot(SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca')

abline(model1)

summary(model1)

##solidago size had postive effect on solanum damage 

##plotting with count model 

count.model = glm(SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca', family = quasipoisson)
summary(count.model)

##quasipoisson model 

count.model = glm(SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca', family = quasipoisson)

summary (count.model)

#gamma model 

count.model = glm(SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca', family = gamma)

summary(count.model)

##num herbs vs soca frequency regression and summary
model1=lm(SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca')

plot (SOCA_Data$`# of herb indiv`~SOCA_Data$'neighborhood.percent.by.size.soca', xlab = 'SOCA Frequency (SOCA biomass/Total biomass)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solanum frequency on Solanum herbivore abundance')

abline(model1, col='red')

summary(model1)


##num of herbs vs soca density regression and summary
model2 = lm(SOCA_Data$`# of herb indiv`~SOCA_Data$'Soca_biomass')

plot (SOCA_Data$`# of herb indiv`~SOCA_Data$'Soca_biomass', xlab = 'SOCA Density (biomass/area)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solanum density on Solanum herbivore abundance')

abline (model2, col = 'red')

summary(model2)

##num of herbs vs soal density regression and summary 

model3 = lm(SOCA_Data$`# of herb indiv`~SOCA_Data$'Soal_biomass')

plot (SOCA_Data$`# of herb indiv`~SOCA_Data$'Soal_biomass', xlab = 'SOAL Density (biomass/area)', ylab = 'Number of Herbivore Indivuals', main = 'The effect of Solidago density on Solanum herbivore abundance')

abline (model3 , col = 'red')

summary(model3)

##num of soca enemies vs soca frequency regression and summary 

model4 = lm(SOCA_Data$`# of enemies`~SOCA_Data$'neighborhood.percent.by.size.soca')

plot (SOCA_Data$`# of enemies`~SOCA_Data$'neighborhood.percent.by.size.soca', xlab = 'SOCA Frequency (SOCA biomass/Total biomass)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solanum frequency on the abundance of neighboring enemies on Solanum')

abline(model4, col = 'red')

summary(model4)

##num of soca enemies vs soca density regression and summary 

model5 = lm(SOCA_Data$`# of enemies`~SOCA_Data$'Soca_biomass')

plot (SOCA_Data$`# of enemies`~SOCA_Data$'Soca_biomass', xlab = 'SOCA Density (biomass/area)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solanum density on the abundance of neighboring enemies on Solanum')

abline(model5, col = 'red')

summary(model5)


##num of soca enemies vs soal density regression and summary 

model6 = lm(SOCA_Data$`# of enemies`~SOCA_Data$'Soal_biomass')

plot (SOCA_Data$`# of enemies`~SOCA_Data$'Soal_biomass', xlab = 'SOAL Density (biomass/area)', ylab = 'Number of Neighboring Enemies', main = 'The effect of Solidago density on the abundance of neighboring enemies on Solanum')

abline(model6, col = 'red')

summary(model6)


##presence/absence dataset 

data_pres_abs <- SOCA_Data

data_pres_abs [ ,34:62]<- ceiling (data_pres_abs [ ,34:62]/500)

##richness column 

data_pres_abs$species_richness <- rowSums(data_pres_abs[ ,34:62])

##predator abundance column 
SOCA_Data$pred_abundance <- rowSums(SOCA_Data[ ,c(44,49,54)])

##total abundance column 

SOCA_Data$total_abundance <- rowSums(SOCA_Data[ ,34:62])

##proportion at each trophic level column 

SOCA_Data$prop_trophic_level <- SOCA_Data$pred_abundance/SOCA_Data$total_abundance

##proportion of predators vs SOCA frequency graph, regression, and summary 

plot (SOCA_Data$prop_trophic_level~SOCA_Data$neighborhood.percent.by.size.soca, xlab = 'Frequency (SOCA biomass/Total biomass)', ylab = 'Proportion of predators in each trophic level', main = 'The effect of Solanum frequency on the proportion of predators in each trophic level')

model7 = lm(SOCA_Data$prop_trophic_level~SOCA_Data$neighborhood.percent.by.size.soca)

plot (SOCA_Data$prop_trophic_level~SOCA_Data$neighborhood.percent.by.size.soca, xlab = 'Frequency (SOCA biomass/Total biomass)', ylab = 'Proportion of predators in each trophic level', main = 'The effect of Solanum frequency on the proportion of predators in each trophic level')

abline(model7, col = 'red')

summary(model7)

##Proportion of predators vs SOCA density graph, regression, and summary

plot (SOCA_Data$prop_trophic_level~SOCA_Data$Soca_biomass,  xlab = 'SOCA density (biomass/area)', ylab = 'Proportion of predators in each trophic level', main = 'The effect of Solanum density on the proportion of predators in each trophic level')

model8 = lm(SOCA_Data$prop_trophic_level~SOCA_Data$Soca_biomass)

plot (SOCA_Data$prop_trophic_level~SOCA_Data$Soca_biomass,  xlab = 'SOCA density (biomass/area)', ylab = 'Proportion of predators in each trophic level', main = 'The effect of Solanum density on the proportion of predators in each trophic level')

abline(model8, col = 'red')

summary(model8)


##Proportion of predators vs SOAL density graph, regression, and summary

plot (SOCA_Data$prop_trophic_level~SOCA_Data$Soal_biomass, xlab = 'SOAL density (biomass/area)', ylab = 'Proportion of predators in each trophic level', main = 'The effect of Solidago density on the proportion of predators in each trophic level')

model9 = lm(SOCA_Data$prop_trophic_level~SOCA_Data$Soal_biomass)

plot (SOCA_Data$prop_trophic_level~SOCA_Data$Soal_biomass, xlab = 'SOAL density (biomass/area)', ylab = 'Proportion of predators in each trophic level', main = 'The effect of Solidago density on the proportion of predators in each trophic level')

abline(model9, col = 'red')

summary(model9)


##Species richness vs SOCA frequency graph, regression, and summary 

plot (data_pres_abs$species_richness~data_pres_abs$neighborhood.percent.by.size.soca, xlab = 'SOCA frequency (SOCA biomass/Total biomass)', ylab = 'Species richness', main = 'The effect of Solanum frequency on the total arthopod species richness')

model10 = lm(data_pres_abs$species_richness~data_pres_abs$neighborhood.percent.by.size.soca)

plot (data_pres_abs$species_richness~data_pres_abs$neighborhood.percent.by.size.soca, xlab = 'SOCA frequency (SOCA biomass/Total biomass)', ylab = 'Species richness', main = 'The effect of Solanum frequency on the total arthopod species richness')

abline(model10, col = 'red')

summary(model9)


##Species richness vs SOCA density graph, regression, and summary 

plot (data_pres_abs$species_richness~data_pres_abs$Soca_biomass, xlab = 'SOCA density (biomass/area)', ylab = 'Species richness', main = 'The effect of Solanum density on the total arthopod species richness')

model11 = lm(data_pres_abs$species_richness~data_pres_abs$Soca_biomass)

plot (data_pres_abs$species_richness~data_pres_abs$Soca_biomass, xlab = 'SOCA density (biomass/area)', ylab = 'Species richness', main = 'The effect of Solanum density on the total arthopod species richness')

abline(model11, col = 'red')

summary(model11)



##species richness vs SOAL density graph, regression, and summary

plot (data_pres_abs$species_richness~data_pres_abs$Soal_biomass, xlab = 'SOAL density (biomass/area)', ylab = 'Species richness', main = 'The effect of Solidago density on the total arthopod species richness')

model12 = lm(data_pres_abs$species_richness~data_pres_abs$Soal_biomass)

plot (data_pres_abs$species_richness~data_pres_abs$Soal_biomass, xlab = 'SOAL density (biomass/area)', ylab = 'Species richness', main = 'The effect of Solidago density on the total arthopod species richness')

abline(model12, col = 'red')

summary(model12)


fit <- lm(SOCA_Data$num_herbs~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
          + SOCA_Data$geno...10+SOCA_Data$size.wholeplant)



fit <- aov(SOCA_Data$num_herbs~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
          + SOCA_Data$geno...10+SOCA_Data$size.wholeplant)



fit2 <- lm(SOCA_Data$num_herbs~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
          +SOCA_Data$size.wholeplant)


SOAL_Data<-subset (AE_Fan_Survey_Data_2016_1_, AE_Fan_Survey_Data_2016_1_$species == 'soal')


fit3 <- lm(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)

plot(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca)

Fit4<- lm(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca*SOAL_Data$Soca_biomass*SOAL_Data$Soal_biomass
          *SOAL_Data$size.wholeplant)

##linear model testing the neighborhood effects and plant size on herbivore abundance on SOCA 

fit2 <- lm(SOCA_Data$num_herbs~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
           +SOCA_Data$size.wholeplant)

##plots of significant effects (SOCA density vs herbs abundance)

plot(SOCA_Data$num_herbs~SOCA_Data$Soca_biomass, xlab = 'Solanum Density (biomass/area)', ylab = 'Herbivore Abundance', main = 'The effect of Solanum density on the number of herbivores')

###plots of significant effects (Total plant size vs SOCA herb abundance)

plot(SOCA_Data$num_herbs~SOCA_Data$size.wholeplant, xlab = 'Total plant size (cm)', ylab = 'Herbivore Abundance', main = 'The effect of Solanum plant size on the abundance of herbivores on Solanum')

modelA = lm(SOCA_Data$num_herbs~SOCA_Data$size.wholeplant)

abline(modelA, col = 'red')



###linear model testing the neighborhood effects and plant size on predator abundance on SOCA 

fitB <- lm(SOCA_Data$num_enemies~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
           +SOCA_Data$size.wholeplant)

##plots of significant effects (total plant size vs number of predators)

plot(SOCA_Data$num_enemies~SOCA_Data$size.wholeplant, xlab = 'Total plant size (cm)', ylab = 'Natural Enemy Abundance', main = 'The effect of Solanum plant size on the abundance of natural enemies on Solanum')

modelB = lm(SOCA_Data$num_enemies~SOCA_Data$size.wholeplant)


abline (modelB, col = 'red')


### Linear model testing neighborhood effects and plant size on herbivore abundance on SOAL 

fitC <- lm(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)

##Plots of significant effects (number of SOAL herbs vs SOAL freq)

modelD = lm(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca)

plot(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca, xlab = 'Solidago Frequency (Solidago biomass/Total biomass)', ylab = 'Herbivore Abundance', main = 'The effect of Solidago frequency on the abundance of herbivores on Solidago')

abline (modelD, col='red')


##Plots of significant effects (number of SOAL herbs vs SOAL plant size)

plot(SOAL_Data$num_herbs~SOAL_Data$size.wholeplant, xlab = 'Total plant size (cm)', ylab = 'Herbivore Abundance', main = 'The effect of Solidago plant size on the abundance of herbivores on Solidago')

modelE = lm(SOAL_Data$num_herbs~SOAL_Data$size.wholeplant)

abline(modelE, col = 'red')

## linear/non-linear model testing neighborhood effects and traits on predator abundance on SOAL 

modelM <- lm(SOAL_Data$num_enemies~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
   +SOAL_Data$size.wholeplant + I(SOAL_Data$neighborhood.percent.by.size.soca^2)
   + I(SOAL_Data$Soca_biomass^2)
   + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))

###No significant linear or non linear effects on neighborhood effects and traits on predator abundance on SOAL



### linear vs non-linear models (response: number of SOCA herbs)

modelC <- lm(SOCA_Data$num_herbs~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
             +SOCA_Data$size.wholeplant + I(SOCA_Data$neighborhood.percent.by.size.soca^2)
             + I(SOCA_Data$Soca_biomass^2)
             + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))


###linear vs non linear models (response: number of SOAL herbs)

modelF <- lm(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
             +SOAL_Data$size.wholeplant + I(SOAL_Data$neighborhood.percent.by.size.soca^2)
             + I(SOAL_Data$Soca_biomass^2)
             + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))



####linear vs non linear models (response: number of SOCA predators)
##NO significant non-linear effects on the number of SOCA predators 

modelG <- lm(SOCA_Data$num_enemies~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
   +SOCA_Data$size.wholeplant + I(SOCA_Data$neighborhood.percent.by.size.soca^2)
   + I(SOCA_Data$Soca_biomass^2)
   + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))


##linear vs non linear models (response: number of SOAL predators)
###NO significant non-linear effects on the number of SOAL predators 

modelH <- lm(SOAL_Data$num_enemies~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
             +SOAL_Data$size.wholeplant + I(SOAL_Data$neighborhood.percent.by.size.soca^2)
             + I(SOAL_Data$Soca_biomass^2)
             + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))


###AE on total aphids on SOAL 

###generating total aphid on SOAL column 

SOAL_Data$total.aphids <- 3*SOAL_Data$Aph1 + 12*SOAL_Data$Aph6 + 35*SOAL_Data$Aph21 + 50*SOAL_Data$`Aph>50`


###Linear and non-linear models for AE on total aphids on SOAL 

modelI <- lm(SOAL_Data$total.aphids~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
             +SOAL_Data$size.wholeplant + I(SOAL_Data$neighborhood.percent.by.size.soca^2)
             + I(SOAL_Data$Soca_biomass^2)
             + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))

##No significant linear or non-linear AE on total Aphids on SOAL 


###generating total aphid on SOCA column 

SOCA_Data$total.aphids <- 3*SOCA_Data$Aph1 + 12*SOCA_Data$Aph6 + 35*SOCA_Data$Aph21 + 50*SOCA_Data$`Aph>50`


###Linear and non-linear models for AE on total aphids on SOCA 

modelJ <- lm(SOCA_Data$total.aphids~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
   +SOCA_Data$size.wholeplant + I(SOCA_Data$neighborhood.percent.by.size.soca^2)
   + I(SOCA_Data$Soca_biomass^2)
   + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))



###linear and non-linear models for AE on total beetles(juncta adults) on SOCA 

modelK <- lm(SOCA_Data$juncta.adult~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
             +SOCA_Data$size.wholeplant + I(SOCA_Data$neighborhood.percent.by.size.soca^2)
             + I(SOCA_Data$Soca_biomass^2)
             + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))

###no significant liner or non linear AE on total beetles on SOCA 


###linear vs non-linear AE on total beetles on SOAL 

modelL <- lm(SOAL_Data$juncta.adult~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
             +SOAL_Data$size.wholeplant + I(SOAL_Data$neighborhood.percent.by.size.soca^2)
             + I(SOAL_Data$Soca_biomass^2)
             + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))

###no significant linear or non linear AE on total beetles on SOAL



##AIC (linear vs non-linear model, neighborhood and traits vs num of herbs on SOCA)


fit <- lm(SOCA_Data$num_herbs~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
          +SOCA_Data$size.wholeplant)

modelC <- lm(SOCA_Data$num_herbs~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
             +SOCA_Data$size.wholeplant + I(SOCA_Data$neighborhood.percent.by.size.soca^2)
             + I(SOCA_Data$Soca_biomass^2)
             + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))


AIC(fit,modelC)

##Non linear models had lower AIC values 


##AIC ((linear vs non-linear model, neighborhood and traits vs num of enemies on SOCA))


fitB <- lm(SOCA_Data$num_enemies~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
           +SOCA_Data$size.wholeplant)


modelG <- lm(SOCA_Data$num_enemies~SOCA_Data$neighborhood.percent.by.size.soca+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
             +SOCA_Data$size.wholeplant + I(SOCA_Data$neighborhood.percent.by.size.soca^2)
             + I(SOCA_Data$Soca_biomass^2)
             + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))



AIC(fitB, modelG)

##linear model had lower AIC value


##AIC ((linear vs non-linear model, neighborhood and traits vs num of herbs on SOAL))

fitC <- lm(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)


modelF <- lm(SOAL_Data$num_herbs~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
             +SOAL_Data$size.wholeplant + I(SOAL_Data$neighborhood.percent.by.size.soca^2)
             + I(SOAL_Data$Soca_biomass^2)
             + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))


AIC(fitC,modelF)

##non linear model had lower AIC value 

##AIC ((linear vs non-linear model, neighborhood and traits vs num of enemies on SOAL))


fitW <- lm(SOAL_Data$num_enemies~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)


modelH <- lm(SOAL_Data$num_enemies~SOAL_Data$neighborhood.percent.by.size.soca+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
   +SOAL_Data$size.wholeplant + I(SOAL_Data$neighborhood.percent.by.size.soca^2)
   + I(SOAL_Data$Soca_biomass^2)
   + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))


AIC(fitW, modelH)


##linear model had the lowest AIC value



##linear model testing the neighborhood effects and plant size on herbivore abundance on SOCA 

fit2 <- lm(SOCA_Data$num_herbs~I(1-SOCA_Data$neighborhood.percent.by.size.soca)+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass+SOCA_Data$size.wholeplant)


##linear model testing the neighborhood effects and plant size on predator abundance on SOCA 

fitB <- lm(SOCA_Data$num_enemies~I(1-SOCA_Data$neighborhood.percent.by.size.soca)+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
           +SOCA_Data$size.wholeplant)


### Linear model testing neighborhood effects and plant size on herbivore abundance on SOAL 

fitC <- lm(SOAL_Data$num_herbs~I(1-SOAL_Data$neighborhood.percent.by.size.soca)+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)

##Plots of significant effects (number of SOAL herbs vs SOCA freq)

modelD = lm(SOAL_Data$num_herbs~I(1-SOAL_Data$neighborhood.percent.by.size.soca))

plot(SOAL_Data$num_herbs~I(1-SOAL_Data$neighborhood.percent.by.size.soca), xlab = 'Solanum Frequency (Solanum biomass/Total biomass)', ylab = 'Herbivore Abundance', main = 'The effect of Solanum frequency on the abundance of herbivores on Solidago')

abline (modelD, col='red')


### Linear model testing neighborhood effects and plant size on predator abundance on SOAL 

fitD <- lm(SOAL_Data$num_enemies~I(1-SOAL_Data$neighborhood.percent.by.size.soca)+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)

##Plots of significant effects (number of SOAL predators vs SOAL plant size)


modelP = lm(SOAL_Data$num_enemies~SOAL_Data$size.wholeplant)

plot(SOAL_Data$num_enemies~SOAL_Data$size.wholeplant, xlab = 'Total plant size (cm)', ylab = 'Natural Enemy Abundance', main = 'The effect of Solidago plant size on the abundance of natural enemies on Solidago')

abline (modelP, col='red')






##AIC (linear vs non-linear model, neighborhood and traits vs num of herbs on SOCA)


fit2 <- lm(SOCA_Data$num_herbs~I(1-SOCA_Data$neighborhood.percent.by.size.soca)+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass+SOCA_Data$size.wholeplant)


modelC <- lm(SOCA_Data$num_herbs~I(1-SOCA_Data$neighborhood.percent.by.size.soca)+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
             +SOCA_Data$size.wholeplant + I((1-SOCA_Data$neighborhood.percent.by.size.soca)^2)
             + I(SOCA_Data$Soca_biomasummss^2)
             + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))

AIC(fit2,modelC)



##AIC ((linear vs non-linear model, neighborhood and traits vs num of enemies on SOCA))


fitB <- lm(SOCA_Data$num_enemies~I(1-SOCA_Data$neighborhood.percent.by.size.soca)+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
           +SOCA_Data$size.wholeplant)


modelG <- lm(SOCA_Data$num_enemies~I(1-SOCA_Data$neighborhood.percent.by.size.soca)+SOCA_Data$Soca_biomass+SOCA_Data$Soal_biomass
             +SOCA_Data$size.wholeplant + I((1-SOCA_Data$neighborhood.percent.by.size.soca)^2)
             + I(SOCA_Data$Soca_biomass^2)
             + I(SOCA_Data$Soal_biomass^2) + I(SOCA_Data$size.wholeplant^2))

AIC(fitB,modelG)


##AIC ((linear vs non-linear model, neighborhood and traits vs num of herbs on SOAL))

fitC <- lm(SOAL_Data$num_herbs~I(1-SOAL_Data$neighborhood.percent.by.size.soca)+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)


modelF <- lm(SOAL_Data$num_herbs~I(1-SOAL_Data$neighborhood.percent.by.size.soca)+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
             +SOAL_Data$size.wholeplant + I((1-SOAL_Data$neighborhood.percent.by.size.soca)^2)
             + I(SOAL_Data$Soca_biomass^2)
             + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))


AIC(fitC,modelF)


##AIC ((linear vs non-linear model, neighborhood and traits vs num of enemies on SOAL))


fitD <- lm(SOAL_Data$num_enemies~I(1-SOAL_Data$neighborhood.percent.by.size.soca)+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
           +SOAL_Data$size.wholeplant)



modelH <- lm(SOAL_Data$num_enemies~I(1-SOAL_Data$neighborhood.percent.by.size.soca)+SOAL_Data$Soca_biomass+SOAL_Data$Soal_biomass
             +SOAL_Data$size.wholeplant + I((1-SOAL_Data$neighborhood.percent.by.size.soca)^2)
             + I(SOAL_Data$Soca_biomass^2)
             + I(SOAL_Data$Soal_biomass^2) + I(SOAL_Data$size.wholeplant^2))


AIC(fitD,modelH)


fitC <- lm(SOAL_Data$num_herbs~I(SOAL_Data$size.wholeplant)^2)


plot (SOAL_Data$num_herbs~I(SOAL_Data$size.wholeplant)^2, xlab= 'Total plant size (cm)', ylab = 'Herbivore Abundance', main = 'The non-linear effect of Solidago plant size on the abundance of herbivores on Solidago')









