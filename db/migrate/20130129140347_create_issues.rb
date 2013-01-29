class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.column :location, :point
      t.timestamps
    end
  end
end
