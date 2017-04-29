class OrangeTree

  def initialize
    @height_in_feet = 3
    @age = 0
    @oranges = 0
    @eaten_oranges = 0

    puts "Your tree has been planted."
  end

  def height
    @height_in_feet = 3 * (@age + 1)
    puts "Your tree is #{@height_in_feet} feet tall."
  end

  def age
    puts "Your tree is #{@age} years old."
  end

  def aging
    one_year_passes
  end

  def count_oranges
    if @age <= 2
      puts 'This tree is too young to have oranges.'
    elsif @age >= 30
      puts 'This tree is too old to have oranges.'
    else
      @oranges = @age * 10
    end
    puts "The tree has #{@oranges} oranges."
  end

  def pick_an_orange
    puts "You go to the tree to pick an orange."
    if @oranges == 0
      puts 'Oh no! There are no oranges.'
    else
      @oranges = @oranges - 1
      @eaten_oranges = @eaten_oranges + 1
      puts 'That orange was delicious!'
    end
  end

  private
    def young?
      @age <= 5
    end

    def old?
      @age <= 25
    end

    def one_year_passes
      if @age == 40
        puts 'Your tree has died.'
        exit
      else
        @age = @age + 1
      end

      if @oranges > 0
        @oranges = 0
      end
    end
end

tree = OrangeTree.new
tree.height
tree.age
tree.count_oranges
tree.pick_an_orange
tree.aging
tree.aging
tree.age
tree.height
tree.count_oranges
tree.pick_an_orange
tree.count_oranges
