class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.text :url
      t.belongs_to :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
