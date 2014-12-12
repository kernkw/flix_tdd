module MoviesHelper

  def flop(movie)
    if movie > 50000000
      number_to_currency(movie)
    else
      movie = "Flop!"
    end
  end
end
