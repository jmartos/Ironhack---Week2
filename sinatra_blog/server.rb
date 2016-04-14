require 'sinatra'
require 'sinatra/reloader' if development?
require_relative '/Users/javi/Desktop/ironhack/week_2/day_4/sinatra_blog/lib/sinatra_blog_class.rb'
require_relative '/Users/javi/Desktop/ironhack/week_2/day_4/sinatra_blog/lib/sinatra_post_class.rb'

blog1 = Blog.new
post1 = Post.new "Hello World", "2014/05/22", "This is the first post of the awsome blog for Ironhack"
post2 = Post.new "New opening", "2016/11/12", "A new Ironhack center has opened in Sebastopol, we are so happy"
post3 = Post.new "Special offer!", "2015/03/04", "We have now a special offer for all redheads in the world!"
post4 = Post.new "Another post", "2014/08/21", "This is another post with nothig to say"
post5 = Post.new "New Year!", "2014/12/31", "Happy new year!!!"
post6 = Post.new "Welcome summer", "2016/06/21", "Finally summer has come"
post7 = Post.new "Welcome winter :(", "2015/12/21", "Noooooo.... winter again....."
post8 = Post.new "The last post", "3000/12/31", "This is the las post of the history"
blog1.add_post(post1)
blog1.add_post(post2)
blog1.add_post(post3)
blog1.add_post(post4)
blog1.add_post(post5)
blog1.add_post(post6)
blog1.add_post(post7)
blog1.add_post(post8)
blog1.order


get '/' do
  @posts = blog1.blog
 erb(:home)
end

get '/new_post' do
 erb(:new_post)
end

post '/added' do
  @title = params[:title]
  @text = params[:text]
  @date = Time.now.to_date.to_s

  post_new = Post.new @title, @date, @text
  blog1.add_post(post_new)
  blog1.order

  erb(:added)
end




