class HotReadsService

  def self.hot_reads
    response = Faraday.get("https://lit-citadel-12413.herokuapp.com/api/v1/hotreads")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.top_read
    response = Faraday.get("https://lit-citadel-12413.herokuapp.com/api/v1/topread")
    JSON.parse(response.body, symbolize_names: true)
  end

end
