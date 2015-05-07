class User < ActiveRecord::Base
  has_many :attendances
  has_many :meetings, through: :attendances

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attribues.values_at(*column_names)
      end
    end
  end

  def self.import(file, meeting_id)
    CSV.foreach(file.path, headers: true) do |row|
      user = find_by_name(row["name"]) || new
      user.attributes = row.to_hash
      user.save!
    end
  end
end
