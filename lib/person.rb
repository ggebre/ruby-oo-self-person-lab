# your code goes here
require 'pry'
class Person
    attr_reader :name 
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene
    
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness= (index)
        
        @happiness = validate_index(index)
    end
    def hygiene= (index)
        @hygiene = validate_index(index)
    end
    def validate_index (index)
        variable = index
        if index > 10 
            variable = 10
        end
        if index < 0
            variable = 0
        end
        variable
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        hygiene_changer(4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        hygiene_changer(-3)
        happiness_changer (2)
        "♪ another one bites the dust ♫"
    end

    def call_friend (callee)
        happiness_changer(3)
        callee.happiness_changer(3)
        "Hi #{callee.name}! It's #{@name}. How are you?"
    end

    def start_conversation (callee, topic)
        if topic == "politics"
            self.happiness_changer(-2)
            callee.happiness_changer(-2)
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness_changer(1)
            callee.happiness_changer(1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
    
    def happiness_changer (value)
        happiness_index = @happiness + value
        self.happiness= happiness_index
    end
    def hygiene_changer (value)
        hygiene_index = @hygiene + value
        self.hygiene= hygiene_index
    end
end

