source("/Users/JoelSilver/PROJECTS/WORK/CURRENT/ACIP/R/mongolia/super-secret-code.R")

writeLines(cat("
    Hey there
    I'm Joel.
    How are you?
    ", "README.md"))


writeLines(your_string, "README.md")

sheet.volumes <- "BDRC-ACIP-Catalog-SingleVolumeWorks"
sheet.uuree.titles <- "Uuree-ACIP-Title-Level-Catalog"
sheet.munkhnyam.titles <- "<Munkhnyam> ACIP-Title-Level-Catalog"
data.volume <- gs_read_csv(gs.URL, sheet.volumes)
data.uuree.titles <- gs_read_csv(gs.URL, sheet.uuree.titles)
data.munkhnyam.titles <- gs_read_csv(gs.URL, sheet.munkhnyam.titles)


write.csv(data.volume, paste(dir.root, dir.inputs, "data.volumes.csv", sep = "/"))
write.csv(data.uuree.titles, paste(dir.root, dir.inputs, "data.uuree.titles.csv", sep = "/"))
write.csv(data.munkhnyam.titles, paste(dir.root, dir.inputs, "data.munkhnyam.titles.csv", sep = "/"))

json.volumes <- toJSON(data.volume, pretty = TRUE)
write(json.volumes, paste(dir.root, dir.outputs, "json.volumes.json", sep = "/"))

json.uuree.titles <- toJSON(data.uuree.titles, pretty = TRUE)
write(json.uuree.titles, paste(dir.root, dir.outputs, "json.uuree.titles.json", sep = "/"))

json.munkhnyam.titles <- toJSON(data.munkhnyam.titles, pretty = TRUE)
write(json.munkhnyam.titles, paste(dir.root, dir.outputs, "json.munkhnyam.titles.json", sep = "/"))
