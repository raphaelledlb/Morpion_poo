require 'pry'
require 'bundler'
Bundler.require

#require_relative 'lib/...'



class Player 
    attr_accessor :prenoms, :symboles


    def initialize(prenom, symbole)
        @prenoms = prenom
        @symboles = symbole
    end

    def show_symbole
    	puts "Le symbole de ce joueur est le #{symboles}"
    end

    def prenom
    	return @prenoms

    def symbole
    	return @symboles


binding pry
end

