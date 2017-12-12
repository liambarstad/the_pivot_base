require 'rails_helper'

RSpec.describe Store, type: :model do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  context "instance methods" do
    it "creates slug from name on save" do
      store = Store.create(name: "Sample Store")
      store = Store.find_by(name: "Sample Store")

      expect(store.slug).to eq("sample-store")
    end
  end

end
