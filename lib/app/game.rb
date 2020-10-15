require 'pry'
require 'bundler'
Bundler.require

require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
#require_relative 'lib/...'


puts "------------------------------------------------"
puts "|         Bienvenue dans le 'MORPION' !        |"
puts "|  Le but du jeu est d'aligner trois symboles !|"
puts "------------------------------------------------"



# Recuperation des prenoms et association à un symbole: 
puts "Que le joueur 1 rentre son prénom !"
prenom_1 = gets.chomp
player1 = Player.new("#{prenom_1}", "x")
puts "Bienvenue #{prenom_1}, ton symbole sera x"

puts 

puts "Au tour du joueur 2 de se présenter !"
prenom_2 = gets.chomp
player2 = Player.new("#{prenom_2}","o")
puts "Bienvenue à toi #{prenom_2}, ton symbole sera o"


@board_game = Board.new
  end


  def play(string)
    puts string + " it's your turn !\n"
    puts "Enter a choice (between 1-9)\n"
    @pos = gets.chomp.to_i
    @pos -= 1
  end

  def go
    # TO DO : lance la partie
    player_back = @player2.prenom
    begin
      while @board_game.victory == false do
        @board_game.print_board
        if player_back.eql? @player2.prenom
          puts @player1.prenom + " it's your turn !\n"
          puts "Enter a choice (between 1-9)\n"
          @pos = gets.chomp.to_i
          @pos -= 1
          while @board_game.update_board(@pos, @player1.symbole.to_s) != true
            play(@player1.status)
          end
         player_back = @player1.prenom
        elsif player_back.eql? @player1.prenom
          puts @player2.prenom + " it's your turn !\n"
          puts "Enter a choice (between 1-9)\n"
          @pos = gets.chomp.to_i
          @pos -= 1
          while @board_game.update_board(@pos, @player2.symbole.to_s) != true
            play(@player2.status)
          end
          player_back = @player2.prenom
        else
          puts "An error occured.\nplayer one or player missing"
        end
      end
    rescue  => e
      puts "Rescued Please enter a number between 1 and 9"
      retry
    end
  end

end


puts 