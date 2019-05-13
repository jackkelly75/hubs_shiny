library(shiny)
library(DT)


function(input, output) {
  
  output$mytable1 <- DT::renderDataTable(
     DT::datatable(darkolivegreen, options = list(pageLength = 25), filter ="top")
    )
   
  output$mytable2 <- DT::renderDataTable(
     DT::datatable(red, options = list(pageLength = 25), filter ="top")
    )
 
  output$mytable3 <- DT::renderDataTable(
     DT::datatable(skyblue, options = list(pageLength = 25), filter ="top")
    )

  output$mytable4 <- DT::renderDataTable(
     DT::datatable(darkorange2, options = list(pageLength = 25), filter ="top")
    )

  output$mytable5 <- DT::renderDataTable(
     DT::datatable(lightsteelblue1, options = list(pageLength = 25), filter ="top")
    )    

  output$mytable6 <- DT::renderDataTable(
     DT::datatable(midnightblue, options = list(pageLength = 25), filter ="top")
    )




  output$downloadDarkData <- downloadHandler(
    filename = "darkolivegreen.csv",
    content = function(file){
        write.csv(darkolivegreen, file , row.names = FALSE)
    }
  )

  output$downloadRedData <- downloadHandler(
    filename = "red.csv",
    content = function(file){
        write.csv(red, file , row.names = FALSE)
    }
  )


  output$downloadSkyblueData <- downloadHandler(
    filename = "skyblue.csv",
    content = function(file){
        write.csv(skyblue, file , row.names = FALSE)
    }
  )

  output$downloadOrangeData <- downloadHandler(
    filename = "darkorange2.csv",
    content = function(file){
        write.csv(darkorange2, file , row.names = FALSE)
    }
  )

  output$downloadLightData <- downloadHandler(
    filename = "lightsteelblue1.csv",
    content = function(file){
        write.csv(lightsteelblue1, file , row.names = FALSE)
    }
  )


  output$downloadMidnightData <- downloadHandler(
    filename = "midnightblue.csv",
    content = function(file){
        write.csv(midnightblue, file , row.names = FALSE)
    }
  )

}