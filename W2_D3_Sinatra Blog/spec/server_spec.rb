require File.expand_path '../spec_helper.rb', __FILE__

describe 'app sinatra blog' do
  it 'add a new post at the end' do
    blog_test = Blog.new
    post1 = Post.new("Título", "3000/01/01", "naovavr")
    post2 = Post.new("Título", "1000/01/01", "naovavr")
    post3 = Post.new("Título", "2000/01/01", "naovavr") 
    blog_test.add_post(post1)
    blog_test.add_post(post2)
    blog_test.add_post(post3)
    expect(blog_test.blog.last).to be(post3)
  end

  it 'order posts by date' do
    blog_test =Blog.new
    post1 = Post.new("Título", "3000/01/01", "naovavr")
    post2 = Post.new("Título", "1000/01/01", "naovavr")
    post3 = Post.new("Título", "2000/01/01", "naovavr") 
    blog_test.add_post(post1)
    blog_test.add_post(post2)
    blog_test.add_post(post3)
    blog_test.order
    expect(blog_test.blog.first).to be(post2)
  end
end

