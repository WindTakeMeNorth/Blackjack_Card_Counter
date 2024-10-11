# Blackjack-Card-Counter

### Introduction
This project implements a **Blackjack card High-Low counting strategy** [1] using R. The goal is to simulate a Blackjack game environment where probabilities are **dynamically calculated** [2] based on the drawn cards. The script provides **real-time** recommendations for bet sizes, optimizing the player's decision-making process by calculating expected profitability. It serves as a practical tool for anyone looking to practice or explore card counting techniques in Blackjack.

You can use the **numeric keypad** to input cards where *numbers represent their corresponding values, and "." represents 10, J, Q, K, and Ace.* Additionally, the initial **house advantage** [3] can be adjusted according to your own rules, and you can set your desired **betting threshold** to determine when you want to start placing bets.

### Features
* Dynamic calculation of remaining cards and probabilities.    
* Real-time bet recommendation based on card count.  
* Easy-to-use interface for simulating different game scenarios.  

### How to Use
Clone the repository:

git clone https://github.com/yourusername/Blackjack_Card_Counter.git

Run the R script: Open the R script (BlackJack_Vector_Practical_Editon1.R) in your R environment or RStudio and follow the on-screen prompts to input card values as you play.

Enter card values as prompted, and the script will provide suggestions on bet sizes based on the game's state.

### Requirements
R programming language (version 4.0 or higher).

Feel free to fork this repository and submit pull requests if you want to contribute new features or improvements!

### License
This project is licensed under the MIT License - see the LICENSE file for details.

## References
[1] https://graphics.stanford.edu/~billyc/class/vis_win0304/as2/   
[2] Wong, S., 1994. Professional blackjack. Pi Yee Press.   
[3] https://wizardofodds.com/games/blackjack/calculator/    
