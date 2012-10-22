
#
# Admin User
#
emails = ['kevin.mosher08@gmail.com', 'chrism@gaslight.co']

emails.each do |email|
  AdminUser.find_or_create_by_email(email, password: 'password', password_confirmation: 'password')
end

#
# Cities/Localities
#
cities = [
  "Addyston", "Amberley Village", "Anderson Township" ,"Arlington Heights",
  "Blue Ash" ,"Cheviot" ,"Cincinnati" ,"Cleves" ,"Colerain Township",
  "Columbia Township" ,"Crosby Township" ,"Deer Park" ,"Delhi Township",
  "Elmwood Place" ,"Evendale" ,"Fairfax" ,"Fairfield" ,"Forest Park",
  "Glendale" ,"Golf Manor" ,"Green Township" ,"Greenhills" ,"Harrison",
  "Harrison Township" ,"Indian Hill" ,"Lincoln Heights" ,"Lockland",
  "Loveland" ,"Madeira" ,"Mariemont" ,"Miami Township" ,"Milford",
  "Montgomery" ,"Mount Healthy" ,"Newtown" ,"North Bend" ,"North College Hill",
  "Norwood" ,"Reading" ,"Sharonville" ,"Silverton" ,"Springdale" ,"Springfield Township",
  "St. Bernard" ,"Sycamore Township" ,"Symmes Township" ,"Terrace Park",
  "Whitewater Township" ,"Woodlawn" ,"Wyoming" ]

cities.each { |name| Locality.find_or_create_by_name(name: name) }

#
# Complaints
#
complaints = {
  grass: 'Field18',
  rodent: 'Field18',
  disrepair: 'Field20',
  trash: 'Field21',
  graffiti: 'Field22',
  overgrown: 'Field23',
  vehicle: 'Field24',
  other: 'Field119'
}

complaints.each do |name, field|
  Complaint.find_or_create_by_name(name, field_name: field)
end

#
# Resources
#
resources = {
  "Hamilton County" => { contact_name: 'Jim Smith', phone: '5135551212', complaint_names: 'grass, disrepair' }
}

resources.each do |resource, attrs|
  Resource.find_or_create_by_name(resource, attrs)
end

# Create a resource for each city. This will probably change.
cities.each do |city|
  Resource.find_or_create_by_name(city)
end

#
# fin.
#

