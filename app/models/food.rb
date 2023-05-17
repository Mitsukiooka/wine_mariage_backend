# == Schema Information
#
# Table name: foods
#
#  id          :bigint           not null, primary key
#  color       :string(255)      not null
#  name        :string(255)      not null
#  taste       :string(255)      not null
#  temperature :string(255)      not null
#  trait       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Food < ApplicationRecord
end
