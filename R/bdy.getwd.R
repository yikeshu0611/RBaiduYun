#' Get working directory
#'
#' @export
#'
bdy.getwd <- function(){
    command=paste('BaiduPCS-Go.exe pwd')
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
