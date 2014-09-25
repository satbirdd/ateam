class Post < ActiveRecord::Base
  belongs_to :author, class_name: 'User'

  has_many :post_viewers
  has_many :viewers, through: :post_viewers

  validates :author, presence: true

  def author?(user)
  	user == author
  end

  def viewer?(user)
  	viewers.exists?(user)
  end
end
