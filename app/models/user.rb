class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :program_members, foreign_key: 'member_id'
  has_many :programs, through: :program_members

  has_many :posts, foreign_key: 'author_id'
  has_many :post_viewers
  has_many :viewed_posts, through: :post_viewers, foreign_key: 'viewer_id'
end
