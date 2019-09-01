# == Schema Information
#
# Table name: pairs
#
#  id         :bigint           not null, primary key
#  start_time :string(255)
#  end_time   :string(255)
#  kind       :string(255)
#  place      :string(255)
#  name       :string(255)
#  weekday_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pair < ApplicationRecord
  belongs_to :weekday

  has_enumeration_for :kind, with: ::PairKinds, create_scopes: true, create_helpers: true

  validates :name, :start_time, :end_time, presence: true
end
