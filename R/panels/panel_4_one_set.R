# --- Create the graph and count number of taxa    

data_4 <- eventReactive({input$button_plot
  input$primer_set_id},{
    # --- Determine at which level do the plot depending on what has been selected
    taxo <- taxo_selected(input$domain, input$supergroup, input$division, input$subdivision, input$class) 
    plot_matches_detailed_taxa(input$primer_set_id, taxo$level, taxo$name)
  })

output$plot_matches_one <- renderUI({
  # req(plot_matches_detailed_taxa_data())
  
  tagList( 
    p("Overall statistics"),
    p(),
    renderTable(data_4()$summary_domain, width = 800, colnames = TRUE),
    p(strong("pct_fwd: "), "% of sequences amplified with forward primer. ", 
      strong("pct_rev: "), "idem for reverse",
      strong("pct_amplified: "), "% of sequences amplified by primer set.",
      strong("mean_amplicon_size: "), "in bp."       ),
    hr(),
    renderPlot({
      data_4()$gg}, width = 1200, height=function(){300 + 90 + 20*data_4()$n_taxa}, res = 96),
    p(strong("Top panel:"), "Location of mismatches for forward and reverse primer.", 
      strong("Bottom panel left"), "number of mismatches.",
      strong("Bottom panel right:"), "amplicon size")

    
  )
}) 