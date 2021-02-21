#' Baidu Yun Cache File
#'
#' @export
#'
#' @examples
#' BaiduYun.CF()
BaiduYun.CF <- function(){
  x=do::Replace(tempdir(),'\\\\','/')
  dir = do::Replace(x,'AppData.*','AppData/Roaming/baidu/BaiduNetdisk/users/')

  files = list.files(dir,recursive = T,full.names = T,
             pattern = 'BaiduYunCacheFileV0.db')
  files[do::right(files,3) == '.db']

}
