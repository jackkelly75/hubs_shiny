fluidPage(
	titlePanel("PD modules not preserved in HC"),


	downloadButton("downloadBrown4Data", "brown4.csv"),
	downloadButton("downloadCoral1Data", "coral1.csv"),
	downloadButton("downloadDarkData", "darkseagreen4.csv"),
	downloadButton("downloadNavajoData", "navajowhite2.csv"),
	downloadButton("downloadSalmonData", "salmon.csv"),
	downloadButton("downloadThistle2Data", "thistle2.csv"),
	downloadButton("downloadVioletData", "violet.csv"),
	downloadButton("downloadOrangered4Data", "orangered4.csv"),

    mainPanel(
    	tabsetPanel(
	        id = 'dataset',
	        tabPanel("brown4", DT::dataTableOutput("mytable1")),
	        tabPanel("coral1", DT::dataTableOutput("mytable2")),
	        tabPanel("darkseagreen4", DT::dataTableOutput("mytable3")),
	        tabPanel("navajowhite2", DT::dataTableOutput("mytable4")),
	        tabPanel("salmon", DT::dataTableOutput("mytable5")),
	        tabPanel("thistle2", DT::dataTableOutput("mytable6")),
	        tabPanel("violet", DT::dataTableOutput("mytable7")),
	        tabPanel("orangered4", DT::dataTableOutput("mytable8"))
		)
   	)
)