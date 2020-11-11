# frozen_string_literal: true

require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store
  validates_associated :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }

  before_create :generate_password

  private

  def generate_password
    self.password = SecureRandom.hex(4)
  end
end
