class PagesController < ApplicationController
  def home
    @blogs = Blog.all
    @skills = Skill.all  
  end

  def about
    
  end
end
