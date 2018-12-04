class ChangeNameOfColumnInCarTypes < ActiveRecord::Migration[5.2]
  def change
     rename_column :car_types, :type, :car_type
  end
end
