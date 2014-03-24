class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :investment

#def to_s
#  ["#{self.first_name}", "#{self.last_name}"].join(" ")
#end

def to_s
  ["#{first_name}", "#{last_name}"].join(" ")
end

end
