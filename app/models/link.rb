class Link

  def self.hot_reads
    HotReadsService.hot_reads.map do |raw_link|
      new(raw_link)
    end
  end

end
