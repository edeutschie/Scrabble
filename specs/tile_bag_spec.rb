require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative '../lib/tile_bag'

#Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "TileBag" do
  it "Creates a new instance of TileBag class" do
    new_tile_bag = Scrabble::TileBag.new
    new_tile_bag.must_be_instance_of Scrabble::TileBag
  end

  it "DEFAULT_TILES is a hash" do
    Scrabble::TileBag::DEFAULT_TILES.must_be_instance_of Hash
  end

  it "DEFAULT_TILES associates each letter with its starting quantity" do
    Scrabble::TileBag::DEFAULT_TILES["e"].must_equal 12
  end

  it "initialize sets up the instance with a tile_bag of all default tiles" do
    new_players_bag = Scrabble::TileBag.new
    new_players_bag.tile_bag.must_equal Scrabble::TileBag::DEFAULT_TILES
  end

  it "draw_tiles(num) returns a collection of random tiles" do
    new_players_bag = Scrabble::TileBag.new
    new_players_bag.draw_tiles(6).must_be_instance_of Array
  end

  it "draw_tiles(num) returns an array of length num" do
    new_players_bag = Scrabble::TileBag.new
    new_players_bag.draw_tiles(6).length.must_equal 6
  end

  it "draw_tiles(num) raises an Argument Error if num is not a non-negative integer"
    new_players_bag = Scrabble::TileBag.new
    new_players_bag.draw_tiles(6).length.must_equal 6
  end


end