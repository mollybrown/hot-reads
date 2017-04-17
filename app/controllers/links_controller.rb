class LinksController < ApplicationController

  def index
    @hot_reads = Link.hot_reads
    @top_read = Link.top_read
  end

end
