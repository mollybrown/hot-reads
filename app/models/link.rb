class Link

  attr_reader :url, :reads

  def initialize(attributes = {})
    @url = attributes[:url]
    @reads = attributes[:read_count]
  end

  def self.hot_reads
    HotReadsService.hot_reads.map do |raw_link|
      new(raw_link)
    end
  end

end
