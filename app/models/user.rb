class User < ApplicationRecord
  after_create :welcome_send
  after_create :username_attribution

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email,
      presence: true,
      uniqueness: true,
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
      
  has_many :projects
  has_many :feats

  private

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
  def username_attribution
    self.update(user_name: "Pseudo#{self.id }")
  end
end
