class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    @happiness = value
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(value)
    @hygiene = value
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    @hygiene = 10 if @hygiene > 10
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    @hygiene = 0 if @hygiene < 0
    self.happiness += 2
    @happiness = 10 if @happiness > 10
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    @happiness = 10 if @happiness > 10
    friend.happiness = 10 if friend.happiness > 10
     "Hi #{friend.name}! It's #{@name}. How are you?"
  end
   def happiness=(new_happiness)
    @happiness = [[new_happiness, 0].max, 10].min
  end

  def start_conversation(friend, topic)
    case topic
    when 'politics'
      friend.happiness = friend.happiness - 2
      self.happiness = happiness - 2
      "blah blah partisan blah lobbyist"
    when 'weather'
      friend.happiness = friend.happiness + 1
      self.happiness = happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end




