Current_P = 0
Game_P = -0.52
Valid_Game_P = 0.5
N_Remaining_Cards = 6 * 52

while (TRUE){

  
  Current_Card = readline("Enter")
  
  N_Remaining_Cards = N_Remaining_Cards - 1
  
  if(Current_Card == "S"){
    break
    
  }

  if(Current_Card == 2){
    Current_P = 0.3875*52/N_Remaining_Cards
  }else if(Current_Card == 3){
    Current_P = 0.4610*52/N_Remaining_Cards
  }else if(Current_Card == 4){
    Current_P = 0.6185*52/N_Remaining_Cards
  }else if(Current_Card == 5){
    Current_P = 0.8018*52/N_Remaining_Cards
  }else if(Current_Card == 6){
    Current_P = 0.4553*52/N_Remaining_Cards
  }else if(Current_Card == 7){
    Current_P = 0.2937*52/N_Remaining_Cards
  }else if(Current_Card == 8){
    Current_P = -0.0137*52/N_Remaining_Cards
  }else if(Current_Card == 9){
    Current_P = -0.1997*52/N_Remaining_Cards
  }else if(Current_Card == 0){
    Current_P = -0.5557*52/N_Remaining_Cards
  }else if(Current_Card == "."){
    Current_P = -0.5816*52/N_Remaining_Cards
  }else{
    Current_P = 0
  }
  
  Game_P = Game_P + Current_P
  cat(Game_P)
  
  if(Game_P > Valid_Game_P){
    cat("Profitable","recommend",500*0.01*(Game_P))}
    
  
 
  
}

