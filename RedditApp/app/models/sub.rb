# == Schema Information
#
# Table name: subs
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  desciption :text             not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Sub < ApplicationRecord

    validates :title, :desciption, presence: true
    
    belongs_to :user

end
