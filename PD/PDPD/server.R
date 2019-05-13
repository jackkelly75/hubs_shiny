library(shiny)
library(DT)


function(input, output) {
  
  output$mytable1 <- DT::renderDataTable(
     DT::datatable(brown4, options = list(pageLength = 25), filter ="top")
    )
   
  output$mytable2 <- DT::renderDataTable(
     DT::datatable(coral1, options = list(pageLength = 25), filter ="top")
    )

  output$mytable3 <- DT::renderDataTable(
     DT::datatable(darkseagreen4, options = list(pageLength = 25), filter ="top")
    )

  output$mytable4 <- DT::renderDataTable(
     DT::datatable(navajowhite2, options = list(pageLength = 25), filter ="top")
    )  


  output$mytable5 <- DT::renderDataTable(
     DT::datatable(salmon, options = list(pageLength = 25), filter ="top")
    )

  output$mytable6 <- DT::renderDataTable(
     DT::datatable(thistle2, options = list(pageLength = 25), filter ="top")
    )

  output$mytable7 <- DT::renderDataTable(
     DT::datatable(violet, options = list(pageLength = 25), filter ="top")
    )

  output$mytable8 <- DT::renderDataTable(
     DT::datatable(orangered4, options = list(pageLength = 25), filter ="top")
    )


  output$downloadBrown4Data <- downloadHandler(
    filename = "brown4.csv",
    content = function(file){
        write.csv(brown4, file , row.names = FALSE)
    }
  )
  output$downloadCoral1Data <- downloadHandler(
    filename = "coral1.csv",
    content = function(file){
        write.csv(coral1, file , row.names = FALSE)
    }
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
  output$downloadThistle2Data <- downloadHandler(
    filename = "thistle2.csv",
    content = function(file){
        write.csv(thistle2, file , row.names = FALSE)
    }
  )
  output$downloadVioletData <- downloadHandler(
    filename = "violet.csv",
    content = function(file){
        write.csv(violet, file , row.names = FALSE)
    }
  )

  output$downloadOrangered4Data <- downloadHandler(
    filename = "orangered4.csv",
    content = function(file){
        write.csv(orangered4, file , row.names = FALSE)
    }
  )

}