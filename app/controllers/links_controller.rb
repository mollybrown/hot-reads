class LinksController < ApplicationController

  def index
    @hot_reads = Link.hot_reads
  end

end
