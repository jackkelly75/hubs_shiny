library(shiny)
library(DT)


function(input, output) {
  
  output$mytable1 <- DT::renderDataTable(
     DT::datatable(blue, options = list(pageLength = 25), filter ="top")
    )
   
  output$mytable2 <- DT::renderDataTable(
     DT::datatable(paleturquoise, options = list(pageLength = 25), filter ="top")
    )

  output$downloadBlueData <- downloadHandler(
  	filename = "blue.csv",
  	content = function(file){
  	  	write.csv(blue, file , row.names = FALSE)
  	}
  )

  output$downloadPaleData <- downloadHandler(
  	filename = "paleturquoise.csv",
  	content = function(file){
  	  	write.csv(paleturquoise, file , row.names = FALSE)
  	}
  )

}