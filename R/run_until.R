#' run_until
#'
#' @param FUN function.
#' @param secs seconds.
#' @description
#' Keep running a function until a certain time.
#' @examples
#' run_until(stop(), secs = 5)
#' @author Charco Hui
run_until = function(FUN, secs = 0){
  result = NULL
  bast_time = proc.time()[3]
  while(is.null(result)){
    print("trying")
    result = tryCatch(FUN, error = function(e){
      print("trying"); NULL
    })

    if((proc.time()[3] - bast_time) > secs){
      print((proc.time()[3] - bast_time))
      return("timeout")
    }
  }

  return(result)
}
