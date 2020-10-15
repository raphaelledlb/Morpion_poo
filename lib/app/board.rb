require 'pry'
require 'bundler'
Bundler.require

require_relative 'boardcase'

class Board
 attr_accessor :board

  def initialize

#on créé des variables d'instance pour chaque case.

    A1 = BoardCase.new
    A2 = BoardCase.new
    A3 = BoardCase.new
    B1 = BoardCase.new
    B2 = BoardCase.new
    B3 = BoardCase.new
    C1 = BoardCase.new
    C2 = BoardCase.new
    C3 = BoardCase.new

    #on range chaque instance dans un array
    @board = [A1, A2, A3, B1, B2, B3, C1, C2, C3]
  end
  end

  def to_s
    list = []
    @board.each{ |caseboard|  list.push(caseboard.case_value)}
    # Mise en forme du tableau de jeu
   puts ""
   puts                               "1"                        "2"                         "3"                       
    puts "             A    " + @board[0].status + " | " + @board[1].status + " | " +  @board[2].status
    puts "                -------------"
    puts "             B    " + @board[3].status + " | " + @board[4].status + " | " +  @board[5].status
    puts "                -------------"
    puts "             C    " + @board[6].status + " | " + @board[7].status + " | " +  @board[8].status
    puts ""
  end

  end
  #We create a method that checks out if the player wins in horizontal
  def victory

    victory = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]  #winning horizontal lines 
    victory.each do |line|
      line_str = ''
      line.each { |x| line_str << @board[x].status }
      return true if ['XXX', 'OOO'].include? line_str
    end
    false
  end
#we define a method that ends the game is the board ens up being full, it returns false, no one wins
  def is_full?
    @board.each do |boardcase|
      return false if boardcase.to_s == ' '
    end
    true
    puts" Game over"
  end



end
 
binding pry