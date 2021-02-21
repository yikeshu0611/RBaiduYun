

#' Create Directory to Baidu Yun
#'
#' @param ... one or more directory names
#'
#' @export
#'
bdy.mkdir <- function(...){
    files <- c(...)
    for (i in files) {
        command <- paste('BaiduPCS-Go.exe mkdir',
                         paste0('"',paste0(i,collapse = '" "'),'"')
        )
        x <- system(command = command,
                    intern = T,show.output.on.console = F)
        Encoding(x) = 'UTF-8'
        if (grepl(tmcn::toUTF8('\u6210\u529F'),x)){
            cat(crayon::green(cli::symbol$tick),' ')
        }else{
            cat(crayon::red(cli::symbol$cross),' ')
        }
        cat(paste0(x,collapse = '\n'))
        cat('\n')
    }
}
