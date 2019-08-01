class User < ApplicationRecord
    # has_many :microposts
    before_save { email.downcase! }
    validates :name, presence: true, length: {maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX},
    uniqueness: { case_sensitive: false } #email unique
    has_secure_password # tao trong table 1 thuoc tinh password_digest hash password
    validates :password, presence: true, length: { minimum: 6 }
end
