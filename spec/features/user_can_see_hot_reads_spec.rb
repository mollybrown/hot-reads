require 'rails_helper'

  context "A user" do
    it "can visit the hot reads page (root)" do
      visit root_path

      expect(current_path).to eq root_path
      expect(page).to have_content("Hot Reads")
    end
  end
