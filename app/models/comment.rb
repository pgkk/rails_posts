class Comment < ActiveRecord::Base
  validates :post_id, :presence => true
  validates :content, :presence => true, :length => {:minimum => 5}
  
  belongs_to :post

end
