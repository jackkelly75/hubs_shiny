library(shiny)
library(DT)


function(input, output) {
  
  output$downloadPurpleData <- downloadHandler(
  	filename = "purple.csv",
  	content = function(file){
  	  	write.csv(purple, file , row.names = FALSE)
  	}
  )

  output$downloadBlueData <- downloadHandler(
  	filename = "blue.csv",
  	content = function(file){
  	  	write.csv(blue, file , row.names = FALSE)
  	}
  )  



  output$mytable1 <- DT::renderDataTable(
     DT::datatable(purple, options = list(pageLength = 25), filter ="top")
    )
   
  output$mytable2 <- DT::renderDataTable(
     DT::datatable(blue, options = list(pageLength = 25), filter ="top")
    )

}