require 'pry'
require 'bundler'
Bundler.require


class BoardCase
#We create a class in order to define the frameworks of each instances
  attr_accessor :status, :nbre_case
  @@instances = 0
 
  def initialize(status = " ")

    @status = status
    @nbre_case = nbre_case
    @@instances +=1
  end

  def get_status
    return @status
  end
  
  def modif_status(new_status)
    @status = new_status
    puts @status
  end
end