class Widget

  def initialize(args)
    @name =""
  end


  def self.hello
    puts 'Widget'
  end

  def set_name(args)
    @name = args
  end

  def get_name
    @name
  end
end

greg = Widget.new('Greg')
greg.set_name('louie')
puts greg.get_name
Widget.hello
