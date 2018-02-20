class BigbluebuttonRailsTo230 < ActiveRecord::Migration
  def self.up
    rename_column :bigbluebutton_rooms, :param, :slug
    rename_column :bigbluebutton_servers, :param, :slug
    add_column :bigbluebutton_recordings, :recording_users, :text
  end

  def self.down
    remove_column :bigbluebutton_recordings, :recording_users
    rename_column :bigbluebutton_servers, :slug, :param
    rename_column :bigbluebutton_rooms, :slug, :param
  end
end