# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Activity.destroy_all

paris = Location.create({name: "Paris"})
dc = Location.create({name: "District of Colombia"})
berlin = Location.create({name: "Berlin"})

parisActivity1 = Activity.create({
        name: "Eiffel Tower",
        address: "Eiffel Tower",
        category: "Sightseeing",
        photo_url: "http://cdn.history.com/sites/2/2015/04/hith-eiffel-tower-iStock_000016468972Large.jpg",
        website_url: "https://en.wikipedia.org/wiki/Eiffel_Tower",
        description: "I got to see the Eiffel Tower.",
        location: paris
})
parisActivity2 = Activity.create({
        name: "Le Grenir a Pan",
        address: "12 rue de la gare 49100 Angers",
        category: "Food",
        photo_url: "http://legrenierapain.com/wp-content/uploads/2015/02/slide062-700px.jpg",
        website_url: "http://legrenierapain.com/en/",
        description: "Best Bakery in Paris.",
        location: paris
})
parisActivity3 = Activity.create({
        name: "Dirty Dick",
        address: "10, rue Frochot Paris 75009",
        category: "Night Life",
        photo_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t31.0-8/885828_540458842660773_1168489680_o.jpg?oh=3a9c07905e8b7c5ab634fc9660f51d99&oe=592E2687",
        website_url: "https://www.facebook.com/Dirty-Dick-504787289561262/",
        description: "Great Bar!",
        location: paris
})

dcActivity1 = Activity.create({
        name: "National Mall",
        address: "Washington, DC 20565",
        category: "Sightseeing",
        photo_url: "https://upload.wikimedia.org/wikipedia/commons/8/8d/WashingtonDCMallAerialNavyPhoto_crop.jpg",
        website_url: "https://www.nps.gov/nama/index.htm",
        description: "The National Mall has it ALL.",
        location: dc
})
dcActivity2 = Activity.create({
        name: "Thunder Burger and Bar",
        address: "3056 M St NW, Washington, DC 20007",
        category: "Food",
        photo_url: "https://pursuitofhappyhourdc.files.wordpress.com/2013/11/img_6623.jpg",
        website_url: "http://www.thunderburger.com/index1.html",
        description: "Had a great burger.",
        location: dc
})
dcActivity3 = Activity.create({
        name: "Kennedy Center",
        address: "2700 F St NW, Washington, DC 20566",
        category: "Night Life",
        photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Kennedy_Center_seen_from_the_Potomac_River,_June_2010.jpg/1200px-Kennedy_Center_seen_from_the_Potomac_River,_June_2010.jpg",
        website_url: "http://www.kennedy-center.org/",
        description: "Saw Phantom of the Opera.",
        location: dc
})
berlinActivity1 = Activity.create({
        name: "Reichstag Building",
        address: "Platz der Republik 1, 11011 Berlin, Germany",
        category: "Sightseeing",
        photo_url: "http://famouswonders.com/wp-content/uploads/2009/03/reichstag-building.jpg",
        website_url: "http://www.bundestag.de/besuche/architektur/reichstag/",
        description: "What a beautiful building.",
        location: berlin
})
berlinActivity2 = Activity.create({
        name: "Facil",
        address: "Potsdamer Straße 3, 10785 Berlin, Germany",
        category: "Food",
        photo_url: "http://www.restaurants-guide4u.com/restaurants/reference/135121/03_Sterne_Restaurant_Facil_Berlin.jpg",
        website_url: "http://www.facil.de/",
        description: "The food was amazing.",
        location: berlin
})
berlinActivity3 = Activity.create({
        name: "Vater Bar",
        address: "Reuterstraße 27, 12047 Berlin, Germany",
        category: "Night Life",
        photo_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t31.0-8/12419014_1118448904840641_8277815375063902808_o.jpg?oh=43166103b645edb03ee88d950efec323&oe=596BC9A1",
        website_url: "https://www.facebook.com/vaterbarneukoelln/",
        description: "Great Drinks!",
        location: berlin
})
