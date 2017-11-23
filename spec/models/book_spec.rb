require "rails_helper"

RSpec.describe Book, :type => :model do
  
  context "is not valid" do 
    let(:book) { build(:book, title: "", description: "home", category_id: "1", author: "") }
    it { expect(book).to_not be_valid }
  end

  context "is valid" do    
    let(:book) { create(:book) }
    it { expect(book).to be_valid }    
  end
end

