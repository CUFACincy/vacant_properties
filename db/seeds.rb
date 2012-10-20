# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
names = ["Addyston", "Amberley Village", "Anderson Township" ,"Arlington Heights" ,"Blue Ash" ,"Cheviot" ,"Cincinnati" ,"Cleves" ,"Colerain Township" ,"Columbia Township" ,"Crosby Township" ,"Deer Park" ,"Delhi Township" ,"Elmwood Place" ,"Evendale" ,"Fairfax" ,"Fairfield" ,"Forest Park" ,"Glendale" ,"Golf Manor" ,"Green Township" ,"Greenhills" ,"Harrison" ,"Harrison Township" ,"Indian Hill" ,"Lincoln Heights" ,"Lockland" ,"Loveland" ,"Madeira" ,"Mariemont" ,"Miami Township" ,"Milford" ,"Montgomery" ,"Mount Healthy" ,"Newtown" ,"North Bend" ,"North College Hill" ,"Norwood" ,"Reading" ,"Sharonville" ,"Silverton" ,"Springdale" ,"Springfield Township" ,"St. Bernard" ,"Sycamore Township" ,"Symmes Township" ,"Terrace Park" ,"Whitewater Township" ,"Woodlawn" ,"Wyoming"]
names.each do |name|
  Locality.create(name: name)
end
