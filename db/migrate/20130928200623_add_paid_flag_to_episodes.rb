class AddPaidFlagToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :paid, :boolean, default: true
  end
end
