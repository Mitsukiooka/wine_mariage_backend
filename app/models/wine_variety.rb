# == Schema Information
#
# Table name: wine_varieties
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WineVariety < ApplicationRecord
  has_many :wines

  def self.options_for_select
    all.map { |variety| [variety.name, variety.id] }
  end
end
