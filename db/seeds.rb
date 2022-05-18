# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "admin", 
            email: "admin@example.com", 
            password: "password", 
            password_confirmation: "password", 
            tagline: "confused 3d artist",
            bio: "Appears in The Thousand-Year Door as a party member. She is a boo and leader of the Boos of Boo's mansion. She is aided by her butler, Bootler, who is very overprotective of her and initially opposes her joining Mario after he defeats Tubba Blubba. She is very pompous, vain, and arrogant. Though she is strong-headed and snooty due to her princess-like status in life, she is also kind-hearted in wanting to aid Mario so that he can save Peach and the world's wishes.",
            website: "https://petfinder.com",
            role: User.roles[:admin])
User.create(username: "rian", 
            email: "rian@example.com", 
            password: "password", 
            password_confirmation: "password", 
            tagline: "game developer/artist/engineer", 
            bio: "A member of the heavenly race known as the Nimbis. She is the daughter of Queen Jaydes of the Underwhere and King Grambi of the Overthere. She is quite kind-hearted and brave. This is especially shown when, once she finds out that the Overthere has been invaded by Bonechill and an army of Skellobits, she is one of the most eager of the Nimbis to assemble the rest and fight back. It is also revealed by the end of her featured chapter that she is actually the physical form of a Pure Heart who was created so that it could be kept safe and hidden from those who would abuse its power.",
            role: User.roles[:admin])
User.create(username: "fifi", 
            email: "fifi@example.com", 
            password: "password", 
            password_confirmation: "password", 
            tagline: "shoebill stork",
            bio: "One of the two rare Ratooeies that appear at Rogueport's docks. He is on a mission to find oil in Dry Dry Desert and Dry Dry Outpost. Mario can choose to give Lumpy 100, 200, or 300 coins for his quest, but it is not a requirement. If Mario gives him 100 coins, later Lumpy will give Mario 300 coins. If he gives Lumpy 200, he will bring back 600. And finally, if Mario give Lumpy 300, he will bring back the maximum number of coins: 999.",
            website: "https://fifikim.com",
            role: User.roles[:admin]).avatar.attach(io: File.open('app/assets/images/seeds/wingo.jpeg'), filename: 'wingo.jpeg')
            
4.times.each do |x|
  Upload.create(name: "Fave #{x} Model", 
                description: "Try #{x} times to find a better #{x}",
                user_id: 1).thumbnail.attach(io: File.open('app/assets/images/seeds/scooter_poster.jpg'), filename: 'scooter_poster.jpg')
  
  Upload.create(name: "Cool #{x} Name", 
                description: "This #{x} is a description of #{x}",
                user_id: 2).thumbnail.attach(io: File.open('app/assets/images/seeds/green.png'), filename: 'green.png')
  
  Upload.create(name: "Happy #{x} Asset", 
                description: "Nice #{x} describing a way cute #{x}",
                user_id: 3).thumbnail.attach(io: File.open('app/assets/images/seeds/purple.jpg'), filename: 'purple.jpg')

  Upload.create(name: "Whoa #{x} File", 
                description: "This #{x} is the best #{x} thingy",
                user_id: 1).thumbnail.attach(io: File.open('app/assets/images/seeds/pink.jpg'), filename: 'pink.jpg')
end

Upload.all.each do |upload|
  upload.file.attach(io: File.open('app/assets/images/seeds/scooter.glb'), filename: 'scooter.glb')
end

Resource.create(name: "LaJuné McMillian", link: "https://laja.me/Movement-Portraits-BML")
Resource.create(name: "Gracen/Disability Archives Lab", link: "http://disabilityarchiveslab.com/")
Resource.create(name: "steven cottingham", link: "https://www.instagram.com/p/CP_l3AssLsL/")
Resource.create(name: "Jillian Wiese", link: "https://granta.com/common-cyborg/")
Resource.create(name: "Beasts of Burden")
Resource.create(name: "Glitch Feminism")
Resource.create(link: "http://www.motiondisabled.com/")
Resource.create(link: "https://www.indiewire.com/2019/09/andy-serkis-motion-capture-disabled-actors-typecasting-1202174645/")
Resource.create(name: "Capturing Motor Competencies. People with Disabilities as Actors in Motion Capture Sessions", link: "https://issuu.com/janstasieko/docs/mocap_report-final")
Resource.create(link: "https://braceworks.ca/2020/02/20/health-tech/mechanics-mobility-and-motion-capture-from-pixar-to-reality/")
Resource.create(link: "https://hellohinge.com/motion-capture-in-medicine/")
Resource.create(link: "https://infolist.com/listing/hiring-physically-handicapped-disabled-injured-people-with-motion-movement-impairments-for-project-for-motion-capture-company/")
Resource.create(link: "https://themighty.com/2020/05/marvels-avenger-video-game-disability/")
Resource.create(name: "Attitudes Toward Signing Avatars Vary Depending on Hearing Status, Age of Signed Language Acquisition, and Avatar Type", link: "https://psyarxiv.com/g2wuc/download/?format=pdf")
Resource.create(name: "Assessing the Deaf User Perspective on Sign Language Avatars", link: "https://www.researchgate.net/publication/254007035_Assessing_the_deaf_user_perspective_on_sign_language_avatars")