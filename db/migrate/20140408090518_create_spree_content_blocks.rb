class CreateSpreeContentBlocks < ActiveRecord::Migration
  def change
    create_table :spree_content_blocks do |t|
      t.string :token, :unique => true, :null => false
      t.string :title, :null => false, :default => ''
      t.text :body, :null => false, :default => ''

      t.timestamps
    end
  end
end