# This migration comes from spree (originally 20130306191917)
class AddIsPublicToTest < ActiveRecord::Migration
  def change
    add_column :tests, :is_public, :boolean, :default => false
  end
end
