module Concerns
    module Findable
        def find_by_name(name)
            self.all.detect {|song| song.name == self}
            #binding.pry
        end
    end
end