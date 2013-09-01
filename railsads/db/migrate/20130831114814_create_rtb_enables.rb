class CreateRtbEnables < ActiveRecord::Migration
  def change
    create_table :rtb_enables do |t|
      t.integer :zone_id
      t.integer :dsp_id

      t.timestamps
    end
  end
end
