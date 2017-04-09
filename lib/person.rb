# your code goes here

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
      @happiness = happiness
      @happiness = 10 if happiness > 10
      @happiness = 0 if happiness < 0
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = 10 if hygiene > 10
        @hygiene = 0 if hygiene < 0
      end

    def happy?
      if @happiness > 7
        true
      else
        false
      end
    end

    def clean?
      if @hygiene > 7
        true
      else
        false
      end
    end

    def get_paid(number)
      @bank_account += number
      "all about the benjamins"
    end

    def take_bath
      self.hygiene=(@hygiene += 4)
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene=(@hygiene -= 3)
      self.happiness=(@happiness += 2)
      "♪ another one bites the dust ♫"
    end

    def call_friend(name)
      self.happiness=(@happiness += 3)
      name.happiness = name.happiness + 3
      "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
      if topic == "politics"
        self.happiness -= 2
        name.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        name.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end







end
