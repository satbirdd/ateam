class ProgramMember < ActiveRecord::Base
  belongs_to :program
  belongs_to :member, class_name: 'User'
end
