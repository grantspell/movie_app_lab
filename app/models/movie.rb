class Movie < ApplicationRecord
    include HTTParty
    base_uri 'http://www.omdbapi.com/?t='

    def self.generate(api_title)
        movie = find_by(api_title: api_title)
        return movie unless movie.nil?

        @api_key = "d31f1a94"

        movie_data = get("#{api_title}&apikey=#{@api_key}")
        movie_poster = ""
        

        create!(title: movie_data['Title'],
            genre: movie_data['Genre'],
            year: movie_data['Year'],
            synopsis: movie_data['Plot'],
            image: movie_data['Poster'],
            api_title: api_title
        )

    end
    
end
