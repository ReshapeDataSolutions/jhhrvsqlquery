#' 按纽生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' jhhrvfnoteUI()

jhhrvfnoteUI <- function(tabTitle ='摘要',
                    colTitles =c('操作区','显示区域'),
                    widthRates =c(4, 8),
                    func_left = buttonfnoteUI_left,
                    func_right =buttonfnoteUI_right
) {

  
  res = tsui::uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right)
  return(res)
}


#' 操作区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_left()
buttonfnoteUI_left <- function() {


  res <- tagList(

    shiny::actionButton(inputId = 'btn_view_fnote' , label = '预览表单数据'),


  )
  return(res)

}





#' 预览区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_right()
buttonfnoteUI_right <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'view_data_fnote', label = '出口'))
  )
  return(res)

}
