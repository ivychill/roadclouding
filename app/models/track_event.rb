class TrackEvent
  include Mongoid::Document
  field :trackee, type: String
  field :tracker, type: String
  field :trackee_lat, type: String
  field :trackee_lng, type: String
  field :tracker_lat, type: String
  field :tracker_lng, type: String
end
