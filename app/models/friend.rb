class Friend < ApplicationRecord
  validates: first_name, presence: true, length: {maximum: 50}
  validates: last_name, presence: true, length: {maximum: 50}
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
            format: { with: URI::MailTo::EMAIL_REGEXP }



  private

  def validate_email_format
    unless email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      errors.add(:email, "is not a valid email address")
    end          

end
