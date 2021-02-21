#' Set working directory
#'
#' @param dir directory
#'
#' @export
#'
bdy.setwd <- function(dir){
    command=paste('BaiduPCS-Go.exe cd',dir)
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
