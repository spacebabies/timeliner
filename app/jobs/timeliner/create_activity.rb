require_dependency 'timeliner/application_job'

module Timeliner
  class CreateActivity < ApplicationJob
    def perform(trackable:, key:, user:nil)
      Activity.create! trackable: trackable, key: key, user: user
    end
  end
end
