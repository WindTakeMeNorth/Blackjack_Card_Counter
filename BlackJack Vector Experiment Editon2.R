q = 0
Final_Time_Chips = c()
Current_P = 0
Game_P = -0.52/100
N_Remaining_Cards = 6 * 52

while(q < 1000){
  
  ##Settings
  Valid_Game_Value = 12
  Wanted_N_Shoes = 100
  Restart_Rate = 0.5  ##实录 Betfred165张左右触发标志牌（切牌）
  ##待记录 Betfair Bet365
  N_Decks = 6
  N_Seats = 5
  N_Chips = Ini_Chips = 500
  
  
  ##Variables
  N_shoes = 0
  N_Cards = round(Restart_Rate*52*N_Decks)
  N_Rounds = round(N_Cards/((1+N_Seats)*2.5))
  Chips = c()
  Amount_Bets = c()
  Current_Values = c()
  N_Bet = 0
  Current_Card = sample(Cards,1)
  Amount_Bet = 0
  Card = rep(c(2,3,4,5,6,7,8,9,10,"J","Q","K","A"),4)
  Cards = rep(Card,N_Decks)
  
  
  while (N_shoes < Wanted_N_Shoes) {
    ##Shuffling
    Card = rep(c(2,3,4,5,6,7,8,9,10,"J","Q","K","A"),4)
    Cards = rep(Card,N_Decks)
    Value = c(rep(c(rep(1,5),rep(0,3),rep(-1,5)),4))
    Values = rep(Value,N_Decks)
    DF = data.frame(Card,Value)
    DFs = data.frame(Cards,Values)
    Game_Value = 0
    k = 0
    i = 0
    Game_P = 0
    
    ##Distributing
    while (i<N_Cards) {
      
      Current_Card = sample(Cards,1)
      Cards = Cards[-which(Cards == Current_Card)[1]]
      N_Remaining_Cards = length(Cards)
      
      if(Current_Card == 2){
        Current_P = 0.3875*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 3){
        Current_P = 0.4610*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 4){
        Current_P = 0.6185*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 5){
        Current_P = 0.8018*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 6){
        Current_P = 0.4553*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 7){
        Current_P = 0.2937*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 8){
        Current_P = -0.0137*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 9){
        Current_P = -0.1997*52/(100*N_Remaining_Cards)
      }else if(Current_Card == 10){
        Current_P = -0.5557*52/(100*N_Remaining_Cards)
      }else if(Current_Card == "J"){
        Current_P = -0.5557*52/(100*N_Remaining_Cards)
      }else if(Current_Card == "Q"){
        Current_P = -0.5557*52/(100*N_Remaining_Cards)
      }else if(Current_Card == "K"){
        Current_P = -0.5557*52/(100*N_Remaining_Cards)
      }else if(Current_Card == "A"){
        Current_P = -0.5816*52/(100*N_Remaining_Cards)
      }else{
        Current_P = 0
      }
      
      Game_P = Game_P + Current_P

      
      ##行动
      ##k为进入round后的发牌数
      if(Game_P > 0.02 & k < 1){
        ##Amount_Bet为非负值
        Amount_Bet = N_Chips*(Game_P)
        a <- sample(c(1,-1),1, prob = c(0.5+Game_P,0.5-Game_P))
        N_Chips = N_Chips + a*Amount_Bet
        k = round(N_Seats * 2.5)
        N_Bet = N_Bet + 1
      }
      
      i = i + 1
      if(k>0){
        k = k - 1 
      }
    }
    
    Chips = append(Chips,N_Chips) ##check Chips available each time
    Amount_Bets = append(Amount_Bets,Amount_Bet) ##check amount of bet each time
    N_shoes = N_shoes + 1
  }
  Final_Time_Chips = append(Final_Time_Chips,mean(Chips))
  q = q + 1 
}


plot(Final_Time_Chips)
mean(Final_Time_Chips)
