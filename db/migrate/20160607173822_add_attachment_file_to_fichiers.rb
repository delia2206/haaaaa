class AddAttachmentFileToFichiers < ActiveRecord::Migration
  def self.up
    change_table :fichiers do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :fichiers, :file
  end
end
