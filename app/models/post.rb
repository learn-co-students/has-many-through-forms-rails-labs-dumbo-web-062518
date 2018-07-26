class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :users

  def categories_attributes=(cc)
    cc.values.each do |ca|
      category = Category.find_or_create_by(ca)
      self.categories << category
    end
  end

  def all_comment_users
    # binding.pry
    self.comments.map do |cc|
      cc.user_id
    end
  end

  def unique_commenters
    self.all_comment_users.uniq
  end


end
