class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.float :price
      t.string :quality
      t.belongs_to :user, index: true
      t.belongs_to :season, index: true
      t.belongs_to :movie, index: true
      t.timestamps
    end
  end
end
