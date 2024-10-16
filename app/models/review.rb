# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  content    :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#  wine_id    :bigint           not null
#
class Review < ApplicationRecord
  belongs_to :wine
  belongs_to :user
end
