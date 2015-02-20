User.delete_all
City.delete_all

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

City.create(name: 'Kraków', short_name: 'Kr')
City.create(name: 'Warszawa', short_name: 'Ww' )
City.create(name: 'London', short_name: 'Ld')
City.create(name: 'Paris', short_name: 'Ps')
City.create(name: 'New York', short_name: 'Ny')
City.create(name: 'Tokyo', short_name: 'Tk')
City.create(name: 'Torino', short_name: 'Tr')
City.create(name: 'Gdynia', short_name: 'Gd')
City.create(name: 'Manila', short_name: 'Mn')
puts 'CITIES ADD'