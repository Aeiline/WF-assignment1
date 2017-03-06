class User < ActiveRecord::Base
    attr_accessible :password, :username, :userId, :age, :email, :homeAddr, :surname
    self.primary_key = :userID
end
