class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :title
      t.text :plot
      t.integer :num_episode

      t.timestamps
    end
  end
end
