class Store < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  before_create :create_slug

  enum status: ["active", "inactive"]

  private

    def create_slug
      self.slug = self.name.split.join('-').downcase
    end

end
