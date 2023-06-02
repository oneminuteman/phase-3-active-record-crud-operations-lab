class Movie < ActiveRecord::Base
        # Create
        def self.create_movie(title)
          movie = Movie.new(title: title)
          movie.save
          movie
        end
      
        # Read
        def self.first_movie
          Movie.first
        end
      
        def self.last_movie
          Movie.last
        end
      
        def self.total_movies
          Movie.count
        end
      
        def self.find_movie_by_id(id)
          Movie.find(id)
        end
      
        def self.find_movie_by_attributes(attributes)
          Movie.find_by(attributes)
        end
      
        def self.movies_released_after(year)
          Movie.where('release_date > ?', year)
        end
      
        # Update
        def update_movie_title(new_title)
          self.title = new_title
          save
        end
      
        def self.update_all_titles(new_title)
          Movie.update_all(title: new_title)
        end
      
        # Delete
        def delete_movie
          destroy
        end
      
        def self.delete_all_movies
          Movie.destroy_all
        end
      end
      
