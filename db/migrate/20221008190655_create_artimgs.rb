class CreateArtimgs < ActiveRecord::Migration[7.0]
  def change
    create_table :artimgs do |t|

      t.timestamps
    end
  end
end
