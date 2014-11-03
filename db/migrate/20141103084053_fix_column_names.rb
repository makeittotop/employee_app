class FixColumnNames < ActiveRecord::Migration
  def change
    change_table :employees do |t|
        t.rename :join_date, :hire
        t.rename :end_date, :end_hire
    end
  end
end
