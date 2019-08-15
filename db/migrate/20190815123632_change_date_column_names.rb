class ChangeDateColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :pick_up_date, :starts_at
    rename_column :orders, :drop_off_date, :ends_at
  end
end
