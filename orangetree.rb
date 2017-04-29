class OrangeTree

  def initialize tree
    @tree = tree
    @height_in_feet = 3
    @age = 0
    @oranges = 0

    puts "#{@tree} has been planted."
  end

  def aging
    
  def count_oranges
    if @age <= 2
      puts 'This tree is too young to have oranges.'
    end
    if @age >= 30
      puts 'This tree is too old to have oranges.'
    else
      @oranges = @age * 10
    end
  end

  def pick_an_orange
    puts "You pick an orange."
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

    private
    def hungry?
      @stuff_in_belly <= 2
    end

    def poopy?
      @stuff_in_intestines >= 8
    end

    def one_year_passes
      if @oranges > 0
        @oranges
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
