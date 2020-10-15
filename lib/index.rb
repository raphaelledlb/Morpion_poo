require 'pry'
require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../app", __FILE__)
require 'app/player'

$:.unshift File.expand_path("./../app", __FILE__)
require 'app/game'