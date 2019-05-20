class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
 
  validates :email, uniqueness: true
  # validates :email, format: { with: /\A\w+[@]\w{3,}[.]\w{2,}\z/, message: "must be valid email format" }

  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
