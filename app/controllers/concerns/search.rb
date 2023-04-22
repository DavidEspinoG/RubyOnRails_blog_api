module Search
  extend ActiveSupport::Concern

  def search(curr_posts, query)
    curr_posts.where("title like '%#{query}%'")
  end
end