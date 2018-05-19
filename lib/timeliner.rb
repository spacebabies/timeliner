require "timeliner/engine"
require "timeliner/tracking_concern"

module Timeliner
  def self.engine
    Engine
  end

  def self.track(trackable, key, user=nil)
    CreateActivity.perform_later(trackable: trackable, key: key, user: user)
  end

  def self.find(trackable, key)
    Activity
      .where(trackable: trackable)
      .where(key: key)
  end

  def self.last_activity(trackable)
    Activity
      .where(trackable: trackable)
      .order(created_at: :desc)
      .limit(1)
  end
end
