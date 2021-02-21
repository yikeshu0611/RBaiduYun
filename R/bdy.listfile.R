#' List files of Baidu Yun
#'
#'
#' @export
#'
bdy.listfile <- function(desc=F,rank='name'){

    if (desc){
        command=paste('BaiduPCS-Go.exe ls -desc')
        cat('Descending by: ')
    }else{
        command=paste('BaiduPCS-Go.exe ls -asc')
        cat('Ascending by: ')
    }
    if (any(! rank %in% c('time','name','size'))) stop('rank must be one or more from time, name, size')
    cat(rank)
    command = paste0(command,paste0(' -',paste0(rank,collapse = ' -')))
    command
    x <- system(command = command,
                intern = T,show.output.on.console = F)
    Encoding(x) = 'UTF-8'
    cat(paste0(x,collapse = '\n'))
}
