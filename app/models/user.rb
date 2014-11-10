class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :educations, dependent: :destroy
  has_many :experiences, dependent: :destroy
  validates_presence_of :first_name, :date_of_birth, :postal_code, :country

end
