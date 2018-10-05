library("PubMedWordcloud")
library("RColorBrewer")

author <- "odisho a"
pmid <- getPMIDs(author = author, dFrom = 1900, dTo = 2013, n = 200)


abstracts <- getAbstracts(pmid)
words <- cleanAbstracts(abstracts)
words <- words[!words$word == "patients", ]
words400 <- words[1:400, ]


pmWordCloud(words[], rot.per = 0, colors = brewer.pal(9, "Set1"), scale = 0.5)



pmWordCloud(words400[], colors = brewer.pal(9, "Set1"), scale = 0.5)


pmWordCloud(words400[], rot.per = 0, colors = brewer.pal(9, "Set1"), scale = 0.5)  #no rotation


