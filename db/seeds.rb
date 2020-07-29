# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@admin.admin", password: "zaq1@WSX", password_confirmation: "zaq1@WSX")

Footer.create(description: "")

ContactInfo.create(address: "693  Wayback Lane Hicksville NY", phone: "+48 123 456 789", email: "hsnznhupca@temporary-mail.net")

Voivodeship.create([{name: "Wielkopolska"}, {name: "Zachodniopomorskie"}, {name: "Pomorskie"}])

FaqPage.create([{title: "Fotowoltaika"},
                       {title: "Pompa ciepła"},
                       {title: "Klimatyzacja"}])

SubPage.create([{title: "O nas"}, {title: "Nasza oferta"}, {title: "Portfolio"}, {title: "Kontakt"}, {title: "Certyfikaty"}])

OfferParagraph.create([{header: "Energia z gwiazd", title: "Fotowoltaika",
                        content: "Instalacje fotowoltaiczne zamieniają energie słoneczną na prąd elektryczny,
                                 dostarczając energie tam, gdzie jej potrzebujesz."},
                       {header: "Korzystne ogrzewanie", title: "Pompy ciepła",
                        content: "Komfortowe i tanie w eksploatacji źródło ogrzewania.
                                 Jej długa żywotność zapewnia ocieplenie na wiele lat."},
                       {header: "Wysoka jakość", title: "Klimatyzacja",
                        content: "Stabilizuje temperatuje i wilgotność w otoczeniu,
                                  zapewniając komfort i zrównoważony bilans cieplny."}])

MainOffer.create([{ title: "Fotowoltaika",
                    description: "Praesent ullamcorper ligula id neque sollicitudin, a vulputate est aliquam.
                                  Convallis elit a."} ,
                  { title: "Pompy ciepła",
                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
                  { title: "Klimatyzacja",
                    description: "Phasellus nec aliquet arcu, vel congue orci.
                                  Aenean pulvinar nisi posuere ante blandit dictum."}])

DesignatedCustomersImage.create([{text: "Dla domu"}, {text: "Dla firmy"}, {text: "Dla rolnictwa"}])

Icon.create([{title: "O nas", description: "Maecenas libero dolor, auctor eget lectus id.", link: "o-nas"},
             {title: "Certyfikaty i szkolenia", description: "Nam porttitor augue ac finibus consequat.", link: ""},
             {title: "Sprzedaż", description: "Etiam nisi diam, imperdiet a pulvinar vel. ", link: "kontakt"},
             {title: "Realizacje", description: "Proin purus augue, blandit vulputate tellus.", link: "realizacje"}])

AboutUsParagraph.create([{title: "Kim jesteśmy?"}, {title: "Co oferujemy?"}, {title: "Co gwarantujemy?"}])