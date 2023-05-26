class Movie < ActiveRecord::Base

    #Create
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    #Read
    def self.first_movie
        Movie.all.first
    end

    def self.last_movie
        Movie.all.last
    end

    def self.movie_count
        Movie.count
    end
    
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where('release_date > 2002')
    end

    #Update
    def update_with_attributes(updated_attribute)
        self.update(updated_attribute)
    end

    def self.update_all_titles(new_title)
        Movie.all.update(title: new_title)
    end

    #Delete

    def self.delete_by_id(id)
        Movie.find(id).delete
    end

    def self.delete_all_movies
        Movie.delete_all
    end

end

# binding.pry
# 0