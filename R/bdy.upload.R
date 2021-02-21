#' Download
#'
#' @param ... one or more local files or directory
#' @param todir directory of Baidu Yun, if missing, current wd will be treated as
#'
#' @export
#' @examples
#' # bdy.upload('E:/baiduyupcs/BaiduPCS-Go_export_1613888309.txt',
#' #            'E:/baiduyupcs/BaiduPCS-Go_export_1613888451.txt')
bdy.upload <- function(...,todir){
    if (missing(todir)){
        command=paste('BaiduPCS-Go.exe pwd')
        todir <- system(command = command,
                    intern = T,show.output.on.console = F)
        Encoding(todir) = 'UTF-8'
    }

    files = c(...)
    for (j in 1:length(todir)) {
        cat('\n\n',crayon::bgCyan('          '))
        cat('   ',paste(j,todir[j]),'   ')
        cat(crayon::bgCyan('          '))
        for (i in 1:length(files)) {
            cat('\n',crayon::red(paste(i,files[i])))
            command <- paste('BaiduPCS-Go.exe upload',
                             files[i],
                             todir[j])
            x <- system(command = command,
                        intern = T,show.output.on.console = F)
            Encoding(x) = 'UTF-8'
            cat(paste0(x,collapse = '\n'))
        }
    }

}

#' fix md5 when upload files meet error
#'
#' @export
#'
bdy.fixmd5 <- function(){
    command <- paste('BaiduPCS-Go.exe fixmd5 -h')
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
