postBodyFilter <- function(req){
  qs <- req$rook.input$read_lines()
  args <- parseQS2(qs)
  req$postBody <- qs
  req$args <- c(req$args, args)
  forward()
}
