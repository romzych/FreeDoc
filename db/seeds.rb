# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Speciality.destroy_all
JoinTableDoctorSpeciality.destroy_all

15.times do |index|
  c = City.create(name: "ville°#{index}")
  d = Doctor.create(first_name: "Nom°#{index}", last_name: "Prenom°#{index}", zip_code: "#{index}", city: c)
  p = Patient.create(first_name: "Nom°#{index}", last_name: "Prenom°#{index}", city: c)
  a = Appointment.create(date: "#{index}.06.2020", doctor: d, patient: p, city: c)
  s = Speciality.create(speciality: "specialité°#{index}")
  ds = JoinTableDoctorSpeciality.create(doctor: d, speciality: s)
end