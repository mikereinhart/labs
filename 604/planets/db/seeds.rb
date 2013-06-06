Planet.delete_all
Moon.delete_all

p1 = Planet.create(name: 'Mercury ', diameter: '3,032 miles', img_url: 'http://s3.amazonaws.com/rapgenius/filepicker/KEPDLNrnSjq5OJOgtkOm_mercury_planet.jpg')
p2 = Planet.create(name: 'Venus', diameter: '7,521 miles', img_url: 'http://www.windows2universe.org/venus/images/venus_med.jpg')
p3 = Planet.create(name: 'Earth', diameter: '7,926 miles', img_url: 'http://www.sos.noaa.gov/Education/images/bluemarble.jpeg')
p4 = Planet.create(name: 'Mars', diameter: '4,222 miles', img_url: 'http://media.npr.org/assets/img/2013/05/02/mars-nasa_custom-745ff15ed1a80d8cbb47a4cb44186c5b6bea41e3-s6-c30.jpg')
p5 = Planet.create(name: 'Jupiter', diameter: '88,846 miles', img_url: 'http://www.nasa.gov/centers/langley/images/content/709568main_jupiter-800x755.jpg')
p6 = Planet.create(name: 'Saturn', diameter: '74,898 miles', img_url: 'http://1.bp.blogspot.com/-B6MqpX_BhvE/T-esDD3N2gI/AAAAAAAAA9M/xuR57_4Ujdw/s1600/saturn.jpg')

m1 = Moon.new(name: 'Luna', diameter: '3,474.8 kilometers', img_url:'http://www.go-astronomy.com/images/moons/earth-moon-luna.jpg') #earth
m2 = Moon.new(name: 'Deimos', diameter: 'variable', img_url:'http://www.go-astronomy.com/images/moons/mars-moon-deimos.jpg') #mars
m3 = Moon.new(name: 'Phobos', diameter: 'variable', img_url:'http://www.go-astronomy.com/images/moons/mars-moon-phobos.jpg') #mars
m4 = Moon.new(name: 'Io', diameter: '3,630 kilometers', img_url:'http://www.go-astronomy.com/images/moons/jupiter-moon-io.jpg') #jupiter
m5 = Moon.new(name: 'Ganymede', diameter: '5,262 kilometers', img_url:'http://www.go-astronomy.com/images/moons/jupiter-moon-ganymede.jpg') #jupiter
m6 = Moon.new(name: 'Callisto', diameter: '4,800 kilometers', img_url:'http://www.go-astronomy.com/images/moons/jupiter-moon-callisto.jpg') #jupiter
m7 = Moon.new(name: 'Europa', diameter: '3,138 kilometers', img_url:'http://www.go-astronomy.com/images/moons/jupiter-moon-europa.jpg') #jupiter
m8 = Moon.new(name: 'Titan', diameter: '5,150 kilometers', img_url: 'http://www.go-astronomy.com/images/moons/saturn-moon-titan.jpg') #saturn
m9 = Moon.new(name: 'Rhea', diameter: '1,530 kilometers', img_url: 'http://www.go-astronomy.com/images/moons/saturn-moon-rhea.jpg') #saturn
m10 = Moon.new(name: 'Iapetus', diameter: '1,460 kilometers', img_url: 'http://www.go-astronomy.com/images/moons/saturn-moon-iapetus.jpg') #saturn

p3.moons << m1
p4.moons << m2 << m3
p5.moons << m4 << m5 << m6 << m7
p6.moons << m8 << m9 << m10