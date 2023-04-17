# --- Supergroups
supergroups <- reactive({
  req(input$domain)
  filter(pr2_taxo, domain == input$domain) %>% 
    pull(supergroup) %>%  
    unique()  
})

observeEvent(supergroups(), {
  updateSelectInput(session, "supergroup", choices = c("All", supergroups()))
})  

# --- Divisions
divisions <- reactive({
  req(input$supergroup)
  filter(pr2_taxo, supergroup == input$supergroup) %>% 
    pull(division) %>%  
    unique()  
})

observeEvent(divisions(), {
  updateSelectInput(session, "division", choices = c("All", divisions()))
})

# --- Subdivisions
subdivisions <- reactive({
  req(input$division)
  filter(pr2_taxo, division == input$division) %>% 
    pull(subdivision) %>%  
    unique()  
})

observeEvent(subdivisions(), {
  updateSelectInput(session, "subdivision", choices = c("All", subdivisions()))
})

# --- Classes    
classes <- reactive({
  req(input$division)
  filter(pr2_taxo, division == input$division) %>% 
    pull(class) %>%  
    unique()
})

observeEvent(classes(), {
  updateSelectInput(session, "class", choices = c("All", classes()))
})