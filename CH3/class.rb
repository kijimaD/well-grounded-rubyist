class Ticket
  # ...
end

# クラスもオブジェクト。クラスオブジェクトはnewでオブジェクトを作ることができるオブジェクト。

my_class = Class.new # message new to the class object Class
# 通常のローカル変数にバインドされたクラスオブジェクト。普通はObjectみたいに定数で表される。
instance_of_my_class = my_class.new

p my_class
p instance_of_my_class

# ================

c = Class.new do
  def say_hello
    puts "Hello!"
  end
end

c.new.say_hello


# class Class はそれ自体のインスタンスである。Classオブジェクトである。
# classオブジェクト

# Objectはクラス。 classはobjectではない。

# p.113
# The class Class is an instance of itself—-that is, it’s a Class object. And there’s more.Remember the class Object? Well, Object is a class—-but classes are objects. So, Object is an object. And Class is a class. And Object is a class, and Class is an object.

# classesはオブジェクトである。クラスのインスタンスはClassと呼ばれる。

# Classのsuperclass はModule. だからModuleで定義されたインスタンスメソッドにアクセスできる。attr_readerとか。
