import 'dart:math';

class Player{
    static const x = 'X';
    static const o = 'O';
    static const empty = '';
    static List<int> playerX = [];
    static List<int> playerO = [];
}
class Game{
  void playGame(int index, String activePlayer) {
    if(activePlayer=='X')
      {
        Player.playerX.add(index);
      }
    else
      {
        Player.playerO.add(index);
      }
  }
  checkWinner(){}
  Future<void> autoPlay(activePlayer)async {
    int index =0 ;
    List<int> emptyCell = [];
    for(var i =0 ; i<9 ;i++){
        if(!(Player.playerX.contains(i)||Player.playerO.contains(i)))
          {
            emptyCell.add(i);
          }
    }
    Random random = Random();
    int randomIndex = random.nextInt(emptyCell.length);
    index = emptyCell[randomIndex];
    playGame(index, activePlayer);
  }
}