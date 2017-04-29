class OrangeTree

  def initialize
    @height_in_feet = 3
    @age = 0
    @oranges = 0

    puts "Your tree has been planted."
  end

  def height
    @height_in_feet = @height_in_feet * @age
    one_year_passes
  end

  def aging
    one_year_passes
  end

  def count_oranges
    if @age <= 2
      puts 'This tree is too young to have oranges.'
    end
    if @age >= 30
      puts 'This tree is too old to have oranges.'
    else
      @oranges = @age * 10
    end
    puts "The tree has #{@oranges} oranges."
    one_year_passes
  end

  def pick_an_orange
    puts "You go to the tree to pick an orange."
    if @oranges == 0
      puts 'Oh no! There are no more oranges.'
    else
      puts 'That orange was delicious!'
    end
    @oranges = @oranges - 1
  end

  private
    def young?
      @age <= 5
    end

    def old?
      @age <= 25
    end

    def one_year_passes
      if @oranges > 0
        @oranges = 0
      end

      if @age >= 0
        @age = @age + 1
        if @age == 40
        puts 'Your tree has died.'
        exit
        end
      end
    end
end

tree = OrangeTree.new
tree.height
tree.count_oranges
tree.pick_an_orange
tree.count_oranges
tree.aging
tree.aging
tree.height
tree.count_oranges
