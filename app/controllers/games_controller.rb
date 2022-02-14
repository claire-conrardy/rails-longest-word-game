class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    # raise
    @word = params[:word].upcase
    # fetch("https://wagon-dictionary.herokuapp.com/")

    # get all the letters in the array
    @letters = params[:letters].split
    # create a method to verify if letters are included (words & letters as argts)
    # raise
    verify?(@word, @letters)
    # raise
  end

  def verify?(word, letters)
    # raise
    # iterate over each character of the word
    word.each_char do |char|
      # inside of the iteration, count how many time they are contained in the word and in letters
      word.count(char)
    end

    letters.each do |char|
      letters.count(char)
    end
    # compare numbers

  end

end
