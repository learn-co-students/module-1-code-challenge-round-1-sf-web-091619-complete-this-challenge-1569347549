class Customer

    @@all = []

    attr_reader :first_name, :last_name

    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name  = last_name
        @@all << self
     end

      def full_name
        "#{first_name} #{last_name}"
     end


      def add_review(restaurant, content, rating)
        Resturant.new(self,content.to_s,rating.to_i)
      end

      def num_reviews
       @@all.select do |reviews|
        reviews.add_review == self
        end
      end

      def self.find_by_name(name)
          @@all.map do |fullname|
          fullname.full_name.find == name
          end
      end

      def self.all_names
        @@all.full_name
      end


  



    def resturants
      @@all.map do |resturant|
        resturant.count == self
      end.uniq
    end



    def self.all
     @@all
    end


end
