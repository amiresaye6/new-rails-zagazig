class User < ApplicationRecord
  attribute :name, :string
  attribute :DOB, :date
  attribute :phone_number, :string
  attribute :email, :string

  validates :name, :DOB, :phone_number, :email, presence: true

  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
