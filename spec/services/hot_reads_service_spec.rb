require 'rails_helper'

describe HotReadsService do
  context '.hot_reads' do
    it "returns a list of the top-10 most-read URLs across all users" do

      raw_urls = HotReadsService.hot_reads

      expect(raw_urls).to be_an(Array)
      expect(raw_urls.count).to eq(10)

      url = raw_urls.first

      expect(url).to be_a(Hash)
      expect(url).to have_key(:title)
      expect(url).to have_value(:url)
    end
  end
end
