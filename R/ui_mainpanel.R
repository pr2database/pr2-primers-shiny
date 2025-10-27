main_panel <- mainPanel(
  tabsetPanel(
    id = 'panel' ,
    
    
    tabPanel("Primers", DT::DTOutput("table_primers")),
    
    tabPanel("Primer sets", DT::DTOutput("table_primer_sets")),
    
    tabPanel("Amplification - overview",
             withSpinner(uiOutput("plot_matches_all"))),
    
    tabPanel("Amplification - details", 
             withSpinner(uiOutput("plot_matches_one"))),
    
    tabPanel("Test your primer/probe" ,
             withSpinner(uiOutput('primer_matches_user')),
             uiOutput('primer_matches_user_graph')),
    
    tabPanel("Test your primer set" , 
             withSpinner(uiOutput('primer_set_matches_user')),
             uiOutput('primer_set_matches_user_graph')),
    
    tabPanel("About", column(8, includeMarkdown("README.md")))

    # tabPanel("Amplification - one set", DT::DTOutput("test"))
  )
)