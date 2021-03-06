
#Creo los tipos de Bookmarks
Type.destroy_all
Type.create(
       [
              {
                     name: "Video"
              },
              {
                     name: "Imagen"
              },
              {
                     name: "Texto"
              },
              {
                     name: "PDF"
              },
              {
                     name: "Audio"
              },
              {
                     name: "Hoja de calculo"
              }
       ]
)

#Creando las Categorias de Bookmarks
Category.destroy_all
Category.create(
       [
              {
                     name: "Animales" #Tendrá el ID = 1
              },
              {
                     name: "Ropa" #Tendrá el ID = 2
              },
              {
                     name: "Comida" #Tendra el ID = 3
              },
              {
                     name: "Redes Sociales" #Tendrá el ID = 4
              },
              {
                     name: "Cosméticos" #Tendrá el ID = 5
              },
              {
                     name: "Arte" #Tendrá el ID = 6
              }
       ]
)

#Creando las sub categorias
Category.create(
       [      #Sub categorias de Animales
              {
                     name: "Gato",
                     category_id: 1
              },
              {
                     name: "Perro",
                     category_id: 1
              },
              #Sub Categorias de Ropa
              {
                     name: "Camisa",
                     category_id: 2
              },
              {
                     name: "Pantalon",
                     category_id: 2
              },
              #Sub categorias de Comida
              {
                     name: "Frutas",
                     category_id: 3
              },
              {
                     name: "Vegetales",
                     category_id: 3
              },
              #Sub categorias de Redes sociales
              {
                     name: "Facebook",
                     category_id: 4
              },
              {
                     name: "Instagram",
                     category_id: 4
              },
              #Sub categorias de Cosmeticos
              {
                     name: "Makeup",
                     category_id: 5
              },
              {      
                     name: "Skin care",
                     category_id: 5
              },
              #Sub categorias de Arte
              {
                     name: "Acuarela",
                     category_id: 6
              },
              {
                     name: "Printmaker",
                     category_id: 6
              }
       ]
)

#Creacion de Bookmarks
Bookmark.destroy_all

20.times do
       Bookmark.create(
              url: Faker::Internet.url,
              type_id: rand(1..6),
              category_id: rand(1..18)
       )
end