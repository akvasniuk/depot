Product.delete_all
Product.create!(title: 'Cucumber',
                description:
                  %{The fruit of typical cultivars of cucumber is roughly cylindrical, but elongated with tapered ends,
                   and may be as large as 62 centimeters (24 in) long and 10 centimeters (4 in) in diameter.
                   Cucumber fruits consist of 95% water},
                image_url: 'cucumber.jpg',
                price: 38.00)
# . . .
Product.create!(title: 'Carrot',
                description:
                  %{carrot, (Daucus carota), herbaceous, generally biennial plant of the Apiaceae family that produces
                   an edible taproot. Among common varieties root shapes range from globular to long, with lower ends
                   blunt to pointed. Besides the orange-coloured roots, white-, yellow-, and purple-fleshed varieties
                   are known.},
                image_url: 'carrot.jpg',
                price: 20.00)
# . . .

Product.create!(title: 'Broccoli',
                description:
                  %{Broccoli is a fast-growing annual plant that grows 60–90 cm (24–35 inches) tall.
Upright and branching with leathery leaves, broccoli bears dense green clusters of flower buds at the ends of
the central axis and the branches..},
                image_url: 'broccoli.jpg',
                price: 25.00)

Product.create!(title: 'Potato',
                description:
                  %{The potato is a tuber, round or oval, with small white roots called " eyes", that are growth buds.
The size varies depending on the variety; the colour of the skin can be white, yellow or even purple. The potato culture
had an enormous importance in Ireland, since it was part of the basic food.},
                image_url: 'potato.jpg',
                price: 38.00)

Product.create!(title: 'Tomato',
                description:
                  %{They are usually red, scarlet, or yellow, though green and purple varieties do exist,
and they vary in shape from almost spherical to oval and elongate to pear-shaped.
Each fruit contains at least two cells of small seeds surrounded by jellylike pulp.},
                image_url: 'tomato.jpg',
                price: 42.00)

Product.create!(title: 'Corn',
                description:
                  %{Corn is a tall annual cereal grass (Zea mays) that is widely grown for its large elongated ears of
starchy seeds. The seeds, which are also known as corn, are used as food for humans and livestock and as a source of
biofuel and can be processed into a wide range of useful chemicals.},
                image_url: 'corn.jpg',
                price: 52.00)

Product.create!(title: 'Onion',
                description:
                  %{An onion is a round vegetable with a brown skin that grows underground. It has many white layers
on its inside which have a strong, sharp smell and taste.},
                image_url: 'onion.jpg',
                price: 28.00)

Product.create!(title: 'Mushroom',
                description:
                  %{A mushroom is the reproductive structure produced by some fungi. It is somewhat like the fruit of
a plant, except that the "seeds" it produces are in fact millions of microscopic spores that form in the gills or pores
underneath the mushroom's cap..},
                image_url: 'mushroom.jpg',
                price: 45.00)