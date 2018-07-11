class AddAttachmentPhotoToFoodCategories < ActiveRecord::Migration[5.1]
  def self.up
    change_table :food_categories do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :food_categories, :photo
  end
end
