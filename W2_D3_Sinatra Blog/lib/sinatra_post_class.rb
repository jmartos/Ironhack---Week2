class Post < Blog
attr_accessor :title, :date, :text
  def initialize (title, date, text)
    @title = title
    @date = date
    @text = text
  end


  def sponsor
      @title = "******#{@title}********"
  end

end

# post1 = Post.new "Hello World", "2014/05/22", "This is the first post of the awsome blog for Ironhack"
# post2 = Post.new "New opening", "2016/11/12", "A new Ironhack center has opened in Sebastopol, we are so happy"
# post3 = Post.new "Special offer!", "2015/03/04", "We have now a special offer for all redheads in the world!"
# post4 = Post.new "Another post", "2014/08/21", "This is another post with nothig to say"
# post5 = Post.new "New Year!", "2014/12/31", "Happy new year!!!"
# post6 = Post.new "Welcome summer", "2016/06/21", "Finally summer has come"
# post7 = Post.new "Welcome winter :(", "2015/12/21", "Noooooo.... winter again....."
# post8 = Post.new "The last post", "3000/12/31", "This is the las post of the history"