class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def Movie.create_with_title(title)
        Movie.create(title:title)
    end

    def Movie.first_movie
        Movie.first
    end

    def Movie.last_movie
        Movie.last
    end

    def Movie.movie_count
        Movie.count
    end

    def Movie.find_movie_with_id(id)
        Movie.find(id)
    end

    def Movie.find_movie_with_attributes(hash)
        Movie.find_by(hash)
    end

    def Movie.find_movies_after_2002
        Movie.where("release_date>2002")
    end

    def update_with_attributes(hash)
        self.update(hash)
    end

    def Movie.update_all_titles(title)
        Movie.update(title:title)
    end

    def Movie.delete_by_id(id)
        movie = Movie.find_movie_with_id(id)
        movie.destroy
    end

    def Movie.delete_all_movies
        Movie.destroy_all
    end
end 