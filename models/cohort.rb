class Cohort < Database::Model
  def self.create(attributes)
    record = self.new(attributes)
    record.save

    record
  end

  def self.where(query, *args)
    Database::Model.execute("SELECT * FROM cohorts WHERE #{query}", *args).map do |row|
      Cohort.new(row)
    end
  end

  def self.find(pk)
    self.where('id = ?', pk).first
  end

  self.attribute_names =  [:id, :name, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes

  def students
    Student.where('cohort_id = ?', self[:id])
  end

  def add_students(students)
    students.each do |student|
      student.cohort = self
    end

    students
  end

  def new_record?
    self[:id].nil?
  end
end
