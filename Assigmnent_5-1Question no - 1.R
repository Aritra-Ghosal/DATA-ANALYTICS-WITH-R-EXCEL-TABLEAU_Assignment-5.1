States = rownames(USArrests)
View(States)
vowel=0
isVowel <- function(char) char %in% c('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
for(i in 1:50)
 {
  v=0
  a <- States[i]
  splitted <- strsplit(a, '')[[1]]
  for(a in splitted)  
  {
    if(isVowel(a) == TRUE)
      {
       v <- v+1
      }
  }
  vowel <- vowel+v
  print(paste0("In sate ", States[i], " number of vowel is ", v))
 }
paste("Total nuber of vowels in USA States is", vowel)
 
