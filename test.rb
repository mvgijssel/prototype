require './lib/prototype'

# pass in a class, the prototype has all the instance / class methods of the class?
# but you can modify the class

# how to handle class / instance level?

#Prototype.build(String) do
#
#  # options here for the prototype class:
#  - mutable: true
#  - blockhole: true
#  - default_value: shine
#  - overwrite_existing_data: true
#
#
#end

#
#a = "hele dikke shine"
#
#clazz = Prototype.build(a)
#
#b = clazz.new
#
#puts a
#puts b
#
#
#
#
#c = "hele dikke shine 2"
#
#d = Prototype(c)


#class Bar
#
#
#
#end


=begin

Determine the use cases!

variable a is an instance of the String object

a = "asdkjsahdksa"
a = Prototype.new(a)

a = Prototype.open(a)

now the ability to add / remove classes to the object a

Prototype.close(a)

the object is closed, no new methods / properties can be added

a.shine = 'kerk'
puts a.kerk -> 'kerk'
puts a -> 'asdkjsahdksa'


method for templating? -> have a method with properties / values -> clone like a boss Marsha style

Prototype converts passed object to an prototype object
What kind of prototype object depends on what kind of prototype class is used for creating
prototype class is created using builder


Foo = Prototype.build do |config|

  config.blackhole = true
  config.raise_error_on_default = true
  config.default_value = nil
  config ...

end


# what if you want to modify all the instances?
# what if you want

# special syntax for overriding setter methods (already present) on the object

a.bar


b.define_setter = *kerk


a = "askdghadhkjasgdajshdgas"

# convert to a Foo type of Prototype
b = Foo(a)

# defining function
b.func = function(){|name| puts name }
b.func = Proc.new {|name| puts name}

b.kerk = 10


b.bar = {|string| puts string}
b.bar(aids)
b.bar # returns method / block / proc / ..?

b.property -> if is block / proc / lambda -> method otherwise function?


should be possible to let each instantiated object from a class be a prototype object:





=end


#class Bar
#
#  def self.new
#
#    puts 'new called!'
#
#    # also the super operator to call initialize on a instance
#    a = super
#
#    # returns a method
#    puts a
#
#  end
#
#  def initialize
#
#    puts 'bar'
#
#  end
#
#end
#
#Bar.new
#
#class Bar
#
#  def baz
#
#    puts 'baz'
#
#  end
#
#end
#
## factory creates a new class
#PrototypeClass = Prototype.build do |config|
#
#  config.some_setting           = true
#  config.instantiate_prototypes = true
#  config.some_other_setting     = false
#
#end
#
## class can be used to instantiate new prototype objects from existing objects
#PrototypedBar     = PrototypeClass.new(Bar)
#
## can add class methods
#PrototypedBar.kek = 10
#
## class level method kek
#puts PrototypedBar.kek
#
## override the initializer?
#PrototypedBar.new = function{ |kek| puts self; puts 'kek' }
#
## doesn't create an instance, but call function
#PrototypedBar.new
#
## the instantatiate prototypes setting does:
#PrototypedBar.new = function{ |*args| PrototypeClass.new(super) }


#
#class Bar
#
#  def create_method(name, proc)
#
#    define_singleton_method name, proc
#
#  end
#
#end
#
#proc = Proc.new do |kerk|
#
#  puts kerk
#
#end
#
#b = Bar.new
#
#b.create_method :shine, proc
#
#b.shine 'asd'
#
#
#a = "askdjhasdasd"
#
#a.define_singleton_method(:to_s) do
#
#  'iets anders'
#
#end
#
#a.define_singleton_method(:inspect) do
#
#  'iets anders'
#
#end
#
## block is passed -> the block reevaluated using instance_eval, so local rebinding of the block occurs (self / super refer to new objects)
#String.send(:define_method, :kek) do
#
#  puts 'kek'
#
#end
#
#
#a.kek
#
#
#group = Group.new
#
#group.name.title = 10
#group.description.title = 10
#
#
#def proto(object, &block)
#
#
#
#end
#
#proto group do |group|
#
#  group.name.title = 10
#  group.name.description = 20
#  group.shine = function{|kerk| puts kerk }
#
#end
#
#puts group.name.title


#class Foo
#
#  def class
#
#    puts 'class'
#
#  end
#
#  def method_missing(name, *args, &block)
#
#    puts "#{name} - #{args} - #{block}"
#
#    self
#
#  end
#
#end
#
#
#
#
#
## without block just opens the object up for modification
#def prototype(object, &block)
#
#  f = Foo.new
#
#  # instance eval, but what abou
#  f.instance_eval &block
#
#end
#
#
#group = ''
#
#prototype group do
#
#  title.description = 10
#
#
#
#
#
#
#
#  def barbar
#
#    puts 'something amazing'
#
#  end
#
#  name do
#
#    description 10
#    type 'coolstuff'
#
#  end
#
#  name.type :area
#  description.type :area
#
#  # create a fucntion
#  something_else function { puts 'dikke shine!' }
#
#end
#
#
#baz = Foo.new
#
#prototype(baz)
#
#baz.kerk = 10

#
## string creates a new instance
#puts "askjhdgsakdhjas".object_id
#puts "askjhdgsakdhjas".object_id
#
## Fixnum doesn't create a new instance
#puts 121309812.object_id
#puts 121309812.object_id
#
## float creates a new instance
#puts 121309812.0.object_id
#puts 121309812.0.object_id
#puts 121309812.0.class
#
## object space to retrieve objects??
#ObjectSpace._id2ref("askjhdgsakdhjas".object_id)

# object space can check for memory leaks etc!
# check which object is about to be destroyed -> object pool?