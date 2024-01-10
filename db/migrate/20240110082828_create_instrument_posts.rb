class CreateInstrumentPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :instrument_posts do |t|
      t.string :image_url
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
