class Store < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  before_save :create_slug

  enum status: ["active", "inactive"]

  private

    def create_slug
      object.slug = object.name.split.join('-').downcase
    end

end
