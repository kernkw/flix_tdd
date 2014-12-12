require 'spec_helper'

describe 'Viewing a specific movie' do
  it 'should show a single movies attributes' do
    movie1 = Movie.create(title: "Iron Man",
                          rating: "PG-13",
                          total_gross: 318412101.00,
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          released_on: "2008-05-02")
    visit movie_path(movie1.id)

    expect(page).to have_text(movie1.title)
    expect(page).to have_link('All Movies', movies_path)
  end


end