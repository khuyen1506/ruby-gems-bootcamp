class User < ApplicationRecord
  # rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable
         #  Them :trackable de dam bao chong su tan cong login nhieu lan vao he thong
         #  them confirmable de khi dang ky co xac minh qua email
 
  # gem rolify tao ra
  rolify :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end
  
  def to_s
    email
  end

  def username
    self.email.split(/@/).first
  end
  has_many :courses 

  after_create :assign_default_role

  def assign_default_role
    if User.count == 1  
      self.add_role(:admin) if self.roles.blank?
      self.add_role(:teacher)
      self.add_role(:student)
    else
      self.add_role(:student) if self.roles.blank?
      self.add_role(:teacher)

    end

  end
  
end
