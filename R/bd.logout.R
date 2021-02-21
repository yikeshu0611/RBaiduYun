#' Logout Baidu
#'
#' @export
#'
bd.logout <- function(){
    command=paste('BaiduPCS-Go.exe logout -y')
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
