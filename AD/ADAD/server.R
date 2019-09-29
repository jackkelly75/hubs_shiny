library(shiny)
library(DT)


function(input, output) {
  
  output$mytable1 <- DT::renderDataTable(
     DT::datatable(blue, options = list(pageLength = 25), filter ="top")
    )

  output$downloadBlueData <- downloadHandler(
  	filename = "blue.csv",
  	content = function(file){
  	  	write.csv(blue, file , row.names = FALSE)
  	}
  )


}
