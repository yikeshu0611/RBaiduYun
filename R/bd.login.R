#' Login Baidu
#'
#' @param bduss bduss of Baidu
#'
#' @export
#'
bd.login <- function(bduss){
    command=paste('BaiduPCS-Go.exe login -bduss',bduss)
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
