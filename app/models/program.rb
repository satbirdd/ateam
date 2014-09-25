class Program < ActiveRecord::Base
  has_many :program_members
  has_many :members, through: :program_members
end
