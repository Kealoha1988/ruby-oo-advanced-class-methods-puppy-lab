class Dog
    attr_accessor :name 
    @@all = []
    @@names = []

    def initialize(name)
        @name = name
        @@all << self
        @@names << name
        save
    end

    def self.all
        @@all.uniq
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        huh = @@names.uniq
        ugg = huh.delete_if{|x| x == "Snoopy"}
        puts ugg

    end

    def save
        @@all << self
    end

end
