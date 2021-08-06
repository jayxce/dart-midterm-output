import 'dart:io';
import 'dart:math';

//enumerates the variables in this situation its the papel, gunting and bato
enum Pinili { papel, gunting, bato }
void main(){
    int cpuScore= 0;
    int playerScore = 0;
        print("Laru Tayo! Ilang Rounds gusto mo?:");
        int number_of_rounds = int.parse(stdin.readLineSync());
for (var i = 1; i <= number_of_rounds; i++) // amount of rounds you want to play
   {
    stdout.write("Round $i : Papel, Gunting, Bato! or Quit?");
    final input = stdin.readLineSync().toLowerCase();
    if (input == 'papel' || input == 'gunting' || input == 'bato') 
    {
      var playerMove;
      if (input == 'papel') {
        playerMove = Pinili.papel;
      } else if (input == 'gunting') {
        playerMove = Pinili.gunting;
      } else {
        playerMove = Pinili.bato;
      }


    final random = Random().nextInt(3);
    final computerMove = Pinili.values[random]; //The Bot RNG
    print('You: $input');
    print('Computer: $computerMove');
        if (playerMove == computerMove) {

          } else if (playerMove == Pinili.papel && computerMove == Pinili.bato ||
                    playerMove == Pinili.gunting && computerMove == Pinili.papel || 
                    playerMove == Pinili.bato && computerMove == Pinili.gunting) {

        playerScore++;
      } else {

        cpuScore++;
      }
    } 
    else if (input == 'quit') {
      break;
    }
  }
   //Shows Scores
        if(playerScore >cpuScore){
            print("Panalo Magaling naman this person! Bot: $cpuScore, You: $playerScore🥇");
        }else if (playerScore < cpuScore){
            print("Talo nanaman. Bot: $cpuScore, You: $playerScore👎");
        }else{
            print("Isa pa!👔");
        }

     }
