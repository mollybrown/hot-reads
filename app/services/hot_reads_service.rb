class HotReadsService

  def self.hot_reads
    # response = Faraday.get("http://lit-citadel-12413.herokuapp.com/api/v1/links/hotreads")
    response = Faraday.get("http://localhost:3000/api/v1/links/hotreads")
    JSON.parse(response.body, symbolize_names: true)
  end

end
