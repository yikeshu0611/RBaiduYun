#' Download
#'
#' @param ... one or more files or directory
#' @param dir directory which you want save files to
#' @param overwrite wether to overwrite an existing file
#'
#' @export
#'
bdy.download <- function(...,dir,overwrite=TRUE){
    if (!missing(dir)){
        command <- paste('BaiduPCS-Go.exe config set -savedir',dir)
        x <- system(command = command,
                    intern = T,show.output.on.console = F)
        Encoding(x) = 'UTF-8'
        x=c(do::Trim(do::Replace(x[10],' {1,}',' ')),
          x[20])
        message(paste0(x,collapse = '\n\n'))
    }
    command <- paste('BaiduPCS-Go.exe download',
                     if (overwrite) '-ow',
                     ...)
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
