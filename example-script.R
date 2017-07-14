library(bacteriaSourceModelControl)

chr.dir.sub.models <- "M:/Models/Bacteria/HSPF/bacteria-sub-model-testing/SourceControl/sub-models"

chr.dirs.sub.models <- list.dirs(path = chr.dir.sub.models, full.names = FALSE)
chr.dirs.sub.models <- grep("General", chr.dirs.sub.models[nchar(chr.dirs.sub.models) > 0], invert = TRUE, value = TRUE)

chr.sub.models <- as.character(lsf.str("package::bacteriaSourceModels"))

df.models <- data.frame(model = chr.sub.models, dir = chr.dirs.sub.models, stringsAsFactors = FALSE)

df.out <- data.frame()

for(kk in 1:length(df.models$model)) {
  df.cur <- run.model.source.subs(df.models$model[kk],paste0(chr.dir.sub.models,"/", df.models$dir[kk]))
  df.out <- rbind(df.out,df.cur)
  rm(df.cur)
}
