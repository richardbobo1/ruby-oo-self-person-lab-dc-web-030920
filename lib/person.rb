class Person

    attr_accessor :bank_account, :name_hash, :people 
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else @happiness = happiness
        end
        # max = 10, min = 0
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else  @hygiene = hygiene
        end
        # max = 10, min = 0
    end

    def hygiene
        @hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
    self.hygiene += 4
    #   self.hygiene += (hygiene=(4))
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness + 3)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
            if topic == "politics"
                self.happiness=(self.happiness - 2)
                person.happiness=(person.happiness - 2)
                return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness=(self.happiness + 1)
                person.happiness=(person.happiness + 1)
                return "blah blah sun blah rain"
            else #topic = "other"
                return "blah blah blah blah blah"
            end
    end


end

