class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestines = 0

    puts "#{@name} is born."
    puts 'Here in Dragon Land you can do a few things with your dragon.'
    puts 'You can feed, walk, or toss your dragon. You can also rock it or put it to bed.'
    puts 'Just make sure that your dragon isn\'t too hungry and goes outside regularly.'
    puts 'If you are ready to leave your dragon, type exit.'
    puts "What would you like to do with #{@name}?"
    activity = ((gets.chomp).downcase).to_s
    @activity = activity
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestines = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowly."
      end
    end

    def toss
      puts "You toss #{@name} up into the air."
      puts 'He giggles which singes you eyebrows.'
      passage_of_time
    end

    def rock
      puts "You rock #{@name} gently"
      @asleep = true
      puts 'He briefly dozes off....'
      passage_of_time
      if @asleep
        @asleep = false
        puts '...but wakes up when you stop.'
      end
    end

    def call_method
      if (@activity.to_s).include?('feed')
        puts self.feed
        recall
      end

      if (@activity.to_s).include?('walk')
        puts self.walk
        recall
      end

      if (@activity.to_s).include?('bed')
        puts self.put_to_bed
        recall
      end

      if (@activity.to_s).include?('rock')
        puts self.rock
        recall
      end

      if (@activity.to_s).include?('toss')
        puts self.toss
        recall
      end

      if (@activity.to_s).include?('exit')
        exit
      else
        puts "I'm sorry, that is not something that #{@name} can do."
        recall
      end

    end

    private
    def hungry?
      @stuff_in_belly <= 2
    end

    def poopy?
      @stuff_in_intestines >= 8
    end

    def recall
      puts 'What would you like to do next?'
        activity = ((gets.chomp).downcase).to_s
        @activity = activity
        call_method
    end

    def passage_of_time
      if @stuff_in_belly > 0
        @stuff_in_belly = @stuff_in_belly - 1
        @stuff_in_intestines = @stuff_in_intestines + 1
      else
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts "#{@name} is starving! In desperation, he ate YOU!"
        exit
      end

      if @stuff_in_intestines == 10
        @stuff_in_intestines = 0
        puts "Whoops! #{@name} had an accident..."
      end

      if hungry?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts "#{@name}'s stomach grumbles..."
      end

      if poopy?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts "#{@name} does the potty dance..."
      end
    end
end

puts 'Welcome to Dragon Land! What would you like to name your dragon?'
  name = gets.chomp

pet = Dragon.new name.to_s
pet.call_method
