library(shiny)
library(DT)


function(input, output) {
  
  output$mytable1 <- DT::renderDataTable(
     DT::datatable(darkgrey, options = list(pageLength = 25), filter ="top")
    )
   
  output$mytable2 <- DT::renderDataTable(
     DT::datatable(saddlebrown, options = list(pageLength = 25), filter ="top")
    )
 
  output$mytable3 <- DT::renderDataTable(
     DT::datatable(sienna3, options = list(pageLength = 25), filter ="top")
    )

  output$downloadDarkgreyData <- downloadHandler(
  	filename = "darkgrey.csv",
  	content = function(file){
  	  	write.csv(darkgrey, file , row.names = FALSE)
  	}
  )


  output$downloadSaddlebrownData <- downloadHandler(
  	filename = "saddlebrown.csv",
  	content = function(file){
  	  	write.csv(saddlebrown, file , row.names = FALSE)
  	}
  )

  output$downloadSienna3Data <- downloadHandler(
  	filename = "sienna3.csv",
  	content = function(file){
  	  	write.csv(sienna3, file , row.names = FALSE)
  	}
  )

}