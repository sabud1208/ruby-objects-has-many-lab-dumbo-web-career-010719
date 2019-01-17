class Author
  attr_reader :name, :posts 
  
  
  
    def initialize(name)
     @name = name
     @posts = []
    end
    
   def add_post(post)
     posts<< post
     post.author = self
   end 
   
   def add_post_by_title(post_title)
     new_post = Post.new(post_title)
     new_post.author = self
     @posts << new_post
   end
   
   def self.post_count
     Post.all.select do |it|
     it.author
   end.count
 end
 
end