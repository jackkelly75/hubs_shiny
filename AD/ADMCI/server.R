library(shiny)
library(DT)


function(input, output) {
  
 
  output$mytable3 <- DT::renderDataTable(
     DT::datatable(sienna3, options = list(pageLength = 25), filter ="top")
    )

 

  output$downloadSienna3Data <- downloadHandler(
  	filename = "sienna3.csv",
  	content = function(file){
  	  	write.csv(sienna3, file , row.names = FALSE)
  	}
  )

}
