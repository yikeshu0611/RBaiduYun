#' Baidu User
#'
#'
#' @export
#'
bd.info <- function(){
    command=paste('BaiduPCS-Go.exe loglist')
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
    cat('\n')
    command=paste('BaiduPCS-Go.exe quota')
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
