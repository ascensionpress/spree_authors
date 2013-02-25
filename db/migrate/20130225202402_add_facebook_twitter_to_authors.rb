class AddFacebookTwitterToAuthors < ActiveRecord::Migration
  def change
    change_table :spree_authors do |t|
      t.string :facebook
      t.string :twitter
    end
  end
end
