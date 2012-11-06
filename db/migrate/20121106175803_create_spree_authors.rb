class CreateSpreeAuthors < ActiveRecord::Migration
  def change
    create_table :spree_authors do |t|
      t.text :biography
      t.string :name
      t.string :permalink

      t.string  :photo_file_name
      t.string  :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end
end
