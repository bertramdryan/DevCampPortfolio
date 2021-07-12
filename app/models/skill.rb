# == Schema Information
#
# Table name: skills
#
#  id               :bigint           not null, primary key
#  title            :string
#  percent_utilized :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Skill < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :percent_utilized

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: 250, width: 250)
    end
end
