taxo_selected <- function(domain, supergroup, division, subdivision, class){
  
# Small function to return the taxo level and taxon name 
# If the lowest level is "All" then it is the one selected then goes up one level

      if(class != "All") {
        taxo_level = "class"
        taxo_name = class
      } else {
        if(subdivision != "All") {
        taxo_level = "subdivision"
        taxo_name = subdivision
        }else {
          if(division != "All") {
            taxo_level = "division"
            taxo_name = division
          } else {
            if(supergroup != "All") {
            taxo_level = "supergroup"
            taxo_name = supergroup
            } else {
              taxo_level = "domain"
              taxo_name = domain          
            }
          }
        }  
      }  
      
return( list(level = taxo_level, name = taxo_name))      
}

  print("taxonomy.R done")