class AddCustomFieldCloseDefaults < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :close_default, :text
  end

  def self.down
    remove_column :custom_fields, :close_default
  end
end
