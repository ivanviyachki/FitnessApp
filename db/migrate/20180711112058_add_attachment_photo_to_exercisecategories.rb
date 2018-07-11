class AddAttachmentPhotoToExercisecategories < ActiveRecord::Migration[5.1]
  def self.up
    change_table :exercise_categories do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :exercise_categories, :photo
  end
end
