library(shiny)
library(DT)


function(input, output) {
  


  output$mytable3 <- DT::renderDataTable(
     DT::datatable(darkseagreen4, options = list(pageLength = 25), filter ="top")
    )

  output$mytable4 <- DT::renderDataTable(
     DT::datatable(navajowhite2, options = list(pageLength = 25), filter ="top")
    )  


  output$mytable5 <- DT::renderDataTable(
     DT::datatable(salmon, options = list(pageLength = 25), filter ="top")
    )


  output$downloadDarkData <- downloadHandler(
    filename = "darkseagreen4.csv",
    content = function(file){
        write.csv(darkseagreen4, file , row.names = FALSE)
    }
  )
  output$downloadNavajoData <- downloadHandler(
    filename = "navajowhite2.csv",
    content = function(file){
        write.csv(navajowhite2, file , row.names = FALSE)
    }
  )
  output$downloadSalmonData <- downloadHandler(
    filename = "salmon.csv",
    content = function(file){
        write.csv(salmon, file , row.names = FALSE)
    }
  )


}
