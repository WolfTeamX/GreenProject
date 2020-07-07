# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'admin@admin.admin'
user.password = 'zaq1@WSX'
user.password_confirmation = 'zaq1@WSX'
user.save!

MainOffer.create([{ title: "Fotowoltaika",
                    description: "Praesent ullamcorper ligula id neque sollicitudin, a vulputate est aliquam.
                                  Convallis elit a."} ,
                  { title: "Pompy ciepła",
                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
                  { title: "Klimatyzacja",
                    description: "Phasellus nec aliquet arcu, vel congue orci.
                                  Aenean pulvinar nisi posuere ante blandit dictum."}])

DesignatedCustomersImage.create([{text: "Dla domu"}, {text: "Dla firmy"}, {text: "Dla rolnictwa"}])

Icon.create([{title: "O nas", description: "Maecenas libero dolor, auctor eget lectus id."},
             {title: "Certyfikaty i szkolenia", description: "Nam porttitor augue ac finibus consequat. "},
             {title: "Sprzedaż", description: "Etiam nisi diam, imperdiet a pulvinar vel. "},
             {title: "Realizacje", description: "Proin purus augue, blandit vulputate tellus."}])

AboutUsParagraph.create([{title: "Kim jesteśmy?"}, {title: "Co oferujemy?"}, {title: "Co gwarantujemy?"}])
AboutUsPage.create