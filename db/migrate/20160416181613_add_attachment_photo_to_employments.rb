class AddAttachmentPhotoToEmployments < ActiveRecord::Migration
  def self.up
    change_table :employments do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :employments, :photo
  end
end
