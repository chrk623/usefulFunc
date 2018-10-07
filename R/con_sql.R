#' con_sql
#'
#' @param con connection name as string
#' @param drv Driver to use, dummy for now
#' @description
#' Create connection with sql.
#' @examples
#' con_sql()
#' insert_df(df = mtcars)
con_sql = function(con = "con", drv = "monetdb") {
  assign(con, 
         eval(parse(text = 
           sprintf("%s = DBI::dbConnect(MonetDBLite
                   ::MonetDBLite())", con))),
         envir = .GlobalEnv)
}
#' insert_df
#'
#' @param df df to pass into function
#' @param drv Driver to use, dummy for now.
#' @param ext extention of the new sql table. E.g mtcars will become mtcars.ext
#' @description
#' Write table to sql.
#' @examples
#' con_sql()
#' insert_df(df = mtcars)
insert_df = function(df, con_name = "con", ext = ".db"){
  df_name = as.list(match.call())$df %>% paste()
  df_string = paste0("'", df_name, "'")
  sprintf("DBI::dbWriteTable(%s, %s, df, overwrite = TRUE)", 
          con_name, df_string) %>% 
    parse(text = .) %>%
    eval()
  assign(paste0(df_name, ext), 
         eval(parse(text = 
                sprintf("dplyr::tbl(%s, %s)", 
                        con_name, df_string))), 
         envir = .GlobalEnv)
}
