class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  # def user(uu)
  #   User.find_or_create_by(username: uu)
  #   # binding.pry
  # end

  def user_attributes=(ua)
    # binding.pry
    ua.values.each do |uu|
      if uu != ""
        user = User.find_or_create_by(username: uu)
        self.user = user
      end
    end
  end

end
