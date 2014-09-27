class ChangeLog < ActiveRecord::Base
  belongs_to :program
  belongs_to :author
end
