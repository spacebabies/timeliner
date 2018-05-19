require_dependency 'timeliner/application_record'

module Timeliner
  class Activity < ApplicationRecord
    belongs_to :trackable, polymorphic: true, touch: true
    belongs_to :user, optional: true

    validates_presence_of :key
  end
end
