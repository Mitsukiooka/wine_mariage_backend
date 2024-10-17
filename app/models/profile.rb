# == Schema Information
#
# Table name: profiles
#
#  id            :bigint           not null, primary key
#  favorite_kind :string(255)      not null
#  name          :string(255)      not null
#  total_number  :string(255)      not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint           not null
#
class Profile < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews
end
