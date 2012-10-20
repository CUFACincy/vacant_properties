class GeocodeJob
  @queue = :geocoding

  def self.perform(submission_id)
    submission = Submission.find(submission_id)
    result = Geocoder.search(submission.street_address)
    submission.set_geocoded(result.first)
  end
end
