module Concerns
    module Findable
        def find_by_name(name)
            self.all.detect {|song| song.name == name}
            #binding.pry
        end
    end
end