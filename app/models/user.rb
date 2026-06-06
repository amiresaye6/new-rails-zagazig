class User < ApplicationRecord
  attribute :name, :string
  attribute :DOB, :date
  attribute :phone_number, :string
  attribute :email, :string
  attribute :address, :string

  validates :name, :DOB, :phone_number, :email, :address, presence: true

  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
