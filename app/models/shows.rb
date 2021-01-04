class Show < ActiveRecord::Base

    def self.highest_rating
        show = Show.order(:rating).last
        show.rating
    end

    def self.most_popular_show
        show = Show.order(:rating).last
        show
    end

    def self.lowest_rating
        show = Show.order(:rating).first
        show.rating
    end

    def self.least_popular_show
        show = Show.order(:rating).first
        show
    end

    def self.ratings_sum
        Show.sum("rating")
    end

    def self.popular_shows
        shows = []
        Show.all.each do |s|
            if s.rating > 5
                shows << s
            end
        end
        shows
    end

    def self.shows_by_alphabetical_order
        Show.order("name ASC")
    end


end