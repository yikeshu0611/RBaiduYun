#' tree structure of files
#'
#' @param dir one directory
#'
#' @export
#'
bdy.tree <- function(dir=''){
    command=paste('BaiduPCS-Go.exe tree',dir)
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
