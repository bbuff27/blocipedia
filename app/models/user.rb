class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  after_initialize :set_default_role

  has_many :wikis

  enum role: [:standard, :premium, :admin]

  private

  def set_default_role
    self.role ||= :standard
  end
end
