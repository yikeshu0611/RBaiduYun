#' rename files
#'
#' @param from one or more files
#' @param to one or more files
#'
#' @export
#'
bdy.rename<-function(from,to){
    for (i in 1:length(from)) {
        cat('\n',crayon::red(paste(i,from[i])),'\n')
        command <- paste('BaiduPCS-Go.exe mv',
                         from[i],
                         to[i])
        x <- system(command = command,
                    intern = T,show.output.on.console = F)
        Encoding(x) = 'UTF-8'
        errormsg <- tmcn::toUTF8("\u9047\u5230\u9519\u8BEF, \u8FDC\u7AEF\u670D\u52A1\u5668\u8FD4\u56DE\u9519\u8BEF, \u4EE3\u7801")
        if (grepl(errormsg,paste0(x,collapse = ''))){
            message(tmcn::toUTF8("\u8BF7\u6C42\u9891\u7E41,\u755915\u79D2\u540E\u91CD\u8BD5"))
            for (i in 1:15) {
                Sys.sleep(1)
                cat(i %% 10)
                if (i == 15) cat('\n\n')
            }
            x <- system(command = command,
                        intern = T,show.output.on.console = F)
            Encoding(x) = 'UTF-8'
        }
        cat(paste0(x,collapse = '\n'))
    }
}
