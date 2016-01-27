class Contact < ActiveRecord::Base
  
  validates :email, presence: true
  validates :fname, presence: true
  

end
