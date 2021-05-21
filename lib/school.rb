require 'pry'
# code here!
class School
    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] = @roster[grade].push(name)
    end

    def grade(g)
        @roster[g]
    end
    
    def sort
        @roster.each_key do |key|
            @roster[key].sort!
        end
    end

end