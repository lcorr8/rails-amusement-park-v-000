class User < ActiveRecord::Base
  has_secure_password
  # validate :password
  #defaults to admin => false  

  has_many :rides
  has_many :attractions, through: :rides

  def mood 

  end

end
