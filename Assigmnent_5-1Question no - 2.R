States = rownames(USArrests)

vowel=0
isVowel <- function(char) char %in% c('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
isA <- function(ch) ch %in% c('a', 'A')
isE <- function(ch) ch %in% c('e', 'E')
isI <- function(ch) ch %in% c('i', 'I')
isO <- function(ch) ch %in% c('o', 'O')
isU <- function(ch) ch %in% c('u', 'U')
va=0
ve=0
vi=0
vo=0
vu=0
for(i in 1:50)
{
  a <- States[i]
  splitted <- strsplit(a, '')[[1]]
  for(a in splitted)  
  {
    
    if(isVowel(a) == TRUE)
    {
      if(isA(a) == TRUE)
        va <- va+1
      
      else if(isE(a) == TRUE)
        ve <- ve+1
      
      else if(isI(a) == TRUE)
        vi <- vi+1
      
      else if(isO(a) == TRUE)
        vo <- vo+1    
      
      else if(isU(a) == TRUE)
        vu = vu+1
  }
 }
  
}
vowel <- c(va,ve,vi,vo,vu)
library(plotrix)
percent<- round(100*vowel/sum(vowel), 1)
colors <- c("yellow","grey","red","blue","purple")
vowel <- c(va,ve,vi,vo,vu)
pie3D(vowel, labels= percent, col = c("yellow","green","red","blue","purple"), explode = 0.05, main = "VOWEL pie chart")
legend(x=-0.94, y=1.09, c('A / a','E / e','I / i','O / o','U / u'), fill =c("yellow","green","red","blue","purple"), bty = "n")

      