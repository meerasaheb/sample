class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#validations
# validates_presence_of :email, :name
# validates :name, length: {minimum: 5,maximum: 10}

has_many :books,foreign_key: :author_id

end
