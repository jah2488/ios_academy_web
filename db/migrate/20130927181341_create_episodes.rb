class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :description
      t.string :video_link

      t.timestamps
    end
  end
end
