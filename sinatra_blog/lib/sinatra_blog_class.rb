
class Blog
  attr_accessor :blog
  def initialize
    @blog = []
  end

  def add_post (post)
    @blog.push(post)
  end

  def order
    @blog.sort_by! {|item| item.date}
  end
  
  def show_blog 
    @blog.each do |item|
      "#{item.title}\n*****************\n#{item.text}\n-----------------"
    end 
  end
end