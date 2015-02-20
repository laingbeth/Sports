class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_full_name
      t.float :salary
      t.string :position_desc
      t.string :team_full_name
      t.integer :season

      t.timestamps null: false
    end
  end
end
