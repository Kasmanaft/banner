class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file
      t.integer :max_show
      t.integer :show, :default=>0, :nil=>false
      t.integer :click, :default=>0, :nil=>false
      t.integer :campaign_id
      t.string :link

      t.timestamp :last_shown
    end

    add_index :images, :campaign_id
  end
end
