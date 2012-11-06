class CreateSpreeAuthors < ActiveRecord::Migration
  def change
    create_table :spree_authors do |t|
      t.text :biography
      t.string :name
      t.string :permalink

      t.timestamps
    end
  end
end
