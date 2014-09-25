class PostViewer < ActiveRecord::Base
  belongs_to :post
  belongs_to :viewer, class_name: 'User'
end
