#' log_hours
#'
#' @param spreadname spreadsheet name.
#' @param sheetname name of the sheet in spreadsheet.
#' @param inputdate date.
#' @param hour seconds.
#' @param descrip description.
#' @description
#' Log hours to my google spreadsheet.
#' @examples
#' log_hours(spreadname = "Job_log", hour = 2, descrip = "hi")
#' @author Charco Hui
log_hours = function(spreadname, sheetname = "Sheet 1",
                     inputdate = NULL, hour, descrip){

  gs_auth(new_user = TRUE)

  hour = paste(hour, "hour", sep = " ")

  d_key = gs_ls(regex = spreadname) %>% pull(sheet_key)
  d = gs_key(d_key)

  if(is.null(inputdate)){
    inputdate = Sys.Date() %>% as.character()
  }
  updateinput = c(inputdate, hour, descrip)

  gs_add_row(d, ws = sheetname, input = updateinput)
}
