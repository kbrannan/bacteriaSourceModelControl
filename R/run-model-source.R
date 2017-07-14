#' run bacteria source model for a specific input file
#'
#' This function is the bacteria source-model for a specfic input file
#' Note: this function does not check for the existance of the input file nor
#' if the input file is the correct format for the source model called. This is
#' left to the user to ensure.
#' @param chr.input.file is the input file for the model
#' @param chr.model is the name of the bacteria source model to use, which is a part of the bacteriaSourceModels
#' @export

run.model.source <- function(chr.file.input, chr.model) {
  eval(parse(text = paste0("df.cur <- ", chr.model, "('", chr.file.input, "')")))
  return(df.cur)
}
