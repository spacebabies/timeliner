module Timeliner
  # Implements activity-related functionality for controllers.
  module TrackingConcern
    private

    # Track a `trackable` with a certain key.
    # The current user is found in the controller.
    def track(trackable, key)
      Timeliner.track trackable, key, current_user
    end
  end
end
