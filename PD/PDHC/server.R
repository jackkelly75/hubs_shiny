library(shiny)
library(DT)


function(input, output) {
  
  output$downloadPurpleData <- downloadHandler(
  	filename = "purple.csv",
  	content = function(file){
  	  	write.csv(purple, file , row.names = FALSE)
  	}
  )

  output$mytable1 <- DT::renderDataTable(
     DT::datatable(purple, options = list(pageLength = 25), filter ="top")
    )

}
