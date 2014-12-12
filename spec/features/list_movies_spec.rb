require 'spec_helper'

describe 'Viewing the list of movies' do
  it 'show the movies' do
    movie1 = Movie.create(title: "Iron Man",
                          rating: "PG-13",
                          total_gross: 318412101.00,
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          released_on: "2008-05-02")

    movie2 = Movie.create(title: "Superman",
                          rating: "PG",
                          total_gross: 134218018.00,
                          description: "Clark Kent grows up to be the greatest super-hero",
                          released_on: "1978-12-15")

    movie3 = Movie.create(title: "Spider-Man",
                          rating: "PG-13",
                          total_gross: 403706375.00,
                          description: "Peter Parker gets bit by a genetically modified spider",
                          released_on: "2002-05-03")

    movie4 = Movie.create(title: "Catwoman",
                          rating: "PG-13",
                          total_gross: 40006375.00,
                          description: "Cats and women",
                          released_on: "2009-06-03")
    
    visit movies_path

    expect(page).to have_link(movie1.title, movie_path(movie1.id))
    expect(page).to have_text(movie1.released_on)
    expect(page).to have_text(movie1.description[0..10])
    expect(page).to have_text(movie1.rating)
    expect(page).to have_text("$318,412,101.00")
    
    expect(page).to have_link(movie2.title, movie_path(movie2.id))
    expect(page).to have_text(movie2.released_on)
    expect(page).to have_text(movie2.description)
    expect(page).to have_text(movie2.rating)
    expect(page).to have_text("$134,218,018.00")
    
    expect(page).to have_link(movie3.title, movie_path(movie3.id))
    expect(page).to have_text(movie3.released_on)
    expect(page).to have_text(movie3.description)
    expect(page).to have_text(movie3.rating)
    expect(page).to have_text("$403,706,375.00")

    expect(page).to have_link(movie4.title, movie_path(movie4.id))
    expect(page).to have_text(movie4.released_on)
    expect(page).to have_text(movie4.description)
    expect(page).to have_text(movie4.rating)
    expect(page).to have_text("Flop!")
  end
end