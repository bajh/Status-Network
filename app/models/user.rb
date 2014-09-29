class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friendships
  has_many :friends, through: :friendships


  def active_friends
    friends.where(status: "available")
  end

  def toggle_status
    if self.status == "available"
      self.status = "unavailable"
    else
      self.status = "available"
    end
    return self.status
  end

  def self.all_but(user)
    User.all.where.not(id: user.id)
  end

end