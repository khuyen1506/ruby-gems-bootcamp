class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable
         #  Them :trackable de dam bao chong su tan cong login nhieu lan vao he thong
         #  them confirmable de khi dang ky co xac minh qua email
  has_many :courses
  
  def to_s
    email
  end

  def username
    self.email.split(/@/).first
  end
  
  
end
