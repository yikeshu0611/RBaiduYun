

#' Baidu Yun Manue
#'
#' @param CatchFile path of BaiduYunCacheFileV0.db
#' @importFrom RSQLite SQLite
#' @return dataframe
#' @export
#'
#' @examples
#' BaiduYun.manue()
BaiduYun.manue <- function(CatchFile){
    if (missing(CatchFile)) CatchFile = BaiduYun.CF()
    if (length(CatchFile) >1){
        choice <- sapply(CatchFile, function(i){
            x <- list.dirs(do::Replace0(i,'BaiduYunCacheFileV0.db'),full.names = F)
            usr <- set::not(x,'AutoBackupFileList')[nchar(set::not(x,'AutoBackupFileList'))>0]
            paste0(usr,collapse = ', ')
        })
        catch <- select.list(choices = choice)
        CatchFile = names(catch)
    }
    db <- DBI::dbConnect(drv = DBI::dbDriver('SQLite'),
                  dbname = CatchFile)

    DBI::dbReadTable(db,"cache_file")
}
