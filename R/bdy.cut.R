#' cut files
#'
#' @param ... one or more files or directory
#' @param todir one or more directory
#'
#' @export
#'
bdy.cut <- function(...,todir){
    files = c(...)
    for (j in 1:length(todir)) {
        cat('\n\n',crayon::bgCyan('          '))
        cat('   ',paste(j,todir[j]),'   ')
        cat(crayon::bgCyan('          '))
        for (i in 1:length(files)) {
            cat('\n',crayon::red(paste(i,files[i])),'\n')
            command <- paste('BaiduPCS-Go.exe mv',
                             files[i],
                             todir[j])
            x <- system(command = command,
                        intern = T,show.output.on.console = F)
            Encoding(x) = 'UTF-8'
            cat(paste0(x,collapse = '\n'))
        }
    }
}
