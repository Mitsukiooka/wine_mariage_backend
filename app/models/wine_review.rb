# == Schema Information
#
# Table name: wine_reviews
#
#  id         :bigint           not null, primary key
#  aroma      :string(255)      not null
#  body       :string(255)      not null
#  color      :string(255)      not null
#  content    :text(65535)      not null
#  score      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wine_id    :bigint           not null
#
# Indexes
#
#  index_wine_reviews_on_wine_id  (wine_id)
#
# Foreign Keys
#
#  fk_rails_...  (wine_id => wines.id)
#
class WineReview < ApplicationRecord
  belongs_to :wine
end
