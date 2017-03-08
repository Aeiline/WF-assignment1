class User < ActiveRecord::Base
    attr_accessor :password, :username, :userId, :age, :email, :homeAddr, :surname
    self.primary_key = :userID
end
