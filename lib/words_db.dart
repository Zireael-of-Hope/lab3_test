
enum Topics {
  towns,
  science,
  countries,
  fauna
}

class WordsDB {

  String getRandomWord(Topics topic) {
    return topics[topic]!.first;
  }

  var topics = {
    Topics.towns: [
      'NEW YORK',
      'LONDON',
      'TOKYO',
      'PARIS',
      'MOSCOW',
      'BEIJING',
      'BERLIN',
      'MADRID',
      'ROME',
      'SEOUL',
      'DELHI',
      'SAO PAULO',
      'SHANGHAI',
      'MEXICO CITY',
      'ISTANBUL',
      'SYDNEY',
      'CHICAGO',
      'TORONTO',
      'CAIRO',
      'MUMBAI',
      'DUBAI',
      'KYIV',
      'SAINT PETERSBURG',
      'LOS ANGELES',
      'AMSTERDAM',
      'WASHINGTON',
      'BANGKOK',
      'KARACHI',
      'SINGAPORE',
      'HONG KONG',
      'LIMA',
      'BAGHDAD',
      'HOUSTON',
      'VANCOUVER',
      'PHILADELPHIA',
      'SEOUL',
      'DELHI',
      'SAO PAULO',
      'SHANGHAI',
      'MEXICO CITY',
      'ISTANBUL',
      'SYDNEY',
      'CHICAGO',
      'TORONTO',
      'CAIRO',
      'MUMBAI',
      'DUBAI',
      'KYIV',
      'SAINT PETERSBURG',
      'LOS ANGELES',
      'AMSTERDAM',
      'WASHINGTON',
      'BANGKOK',
      'KARACHI',
      'SINGAPORE',
      'HONG KONG',
      'LIMA',
      'BAGHDAD',
      'HOUSTON',
      'VANCOUVER',
      'PHILADELPHIA',
      'LUANDA',
      'MOSCOW',
      'TEHRAN',
      'SEATTLE',
      'HANOI',
      'MILAN',
      'ATHENS',
      'DETROIT',
      'RIO DE JANEIRO',
      'FUKUOKA',
      'MANILA',
      'NEW DELHI',
      'DALLAS',
      'BERLIN',
      'MINSK',
      'YAKUTSK',
      'BARCELONA',
      'RIO DE JANEIRO',
      'SEATTLE',
      'HANOI',
      'MILAN',
      'ATHENS',
      'DETROIT',
      'RIO DE JANEIRO',
      'FUKUOKA',
      'MANILA',
      'NEW DELHI',
      'DALLAS',
      'BERLIN',
      'MINSK',
      'YAKUTSK',
      'BARCELONA'
    ],
    Topics.science: [
      'ASTRONOMY',
      'BIOLOGY',
      'CHEMISTRY',
      'PHYSICS',
      'GEOLOGY',
      'MATHEMATICS',
      'ENGINEERING',
      'GENETICS',
      'PSYCHOLOGY',
      'NEUROSCIENCE',
      'ECOLOGY',
      'MEDICINE',
      'ANTHROPOLOGY',
      'ARCHAEOLOGY',
      'BIOCHEMISTRY',
      'COSMOLOGY',
      'METEOROLOGY',
      'PHARMACOLOGY',
      'INFORMATICS',
      'ROBOTICS',
      'GENOMICS',
      'RADIOLOGY',
      'ELECTRONICS',
      'NANOTECHNOLOGY',
      'BIOMECHANICS',
      'EVOLUTIONARY BIOLOGY',
      'THEORETICAL PHYSICS',
      'BIOENGINEERING',
      'GEOPHYSICS',
      'GEOGRAPHY',
      'ECONOMICS',
      'SOCIOLOGY',
      'LINGUISTICS',
      'PHILOSOPHY',
      'HISTORY',
      'PALEONTOLOGY',
      'MICROBIOLOGY',
      'LOGIC',
      'COGNITIVE SCIENCE',
      'QUANTUM PHYSICS',
      'GENOMICS',
      'RADIOASTRONOMY',
      'ENTOMOLOGY',
      'ASTROPHYSICS',
      'NANOPHYSICS',
      'CONSTRUCTION',
      'LITERATURE',
      'CULTUROLOGY',
      'TOPOLOGY',
      'BIOSTATISTICS',
      'NEUROLOGY',
      'CYBERNETICS',
      'BIONICS',
      'NEPHROLOGY',
      'EPIDEMIOLOGY',
      'ASTROBIOLOGY',
      'ECOSYSTEM',
      'BIODIVERSITY',
      'ETHNOBOTANY',
      'NUMEROLOGY',
      'ONCOLOGY',
      'NEONATOLOGY',
      'PSYCHIATRY',
      'CRYSTALLOGRAPHY',
      'HYDROLOGY',
      'SEISMOLOGY',
      'ELECTROCHEMISTRY',
      'OCEANOGRAPHY',
      'OPTICS',
      'ZOOLOGY',
      'BOTANY',
      'ORNITHOLOGY',
      'PARASITOLOGY',
      'VIROLOGY',
      'MORPHOLOGY',
      'TOXICOLOGY',
      'METEOROLOGY',
      'GLACIOLOGY',
      'THERMODYNAMICS',
      'PHYSIOLOGY',
      'ETHOLOGY',
      'PHARMACOLOGY',
      'IMMUNOLOGY',
      'CYTOLOGY',
      'NEUROBIOLOGY',
      'ASTRONAUTICS',
      'NUCLEAR PHYSICS',
      'EXPLOSIVES ENGINEERING'
    ],
    Topics.countries: [
      'Afghanistan',
      'Albania',
      'Algeria',
      'Andorra',
      'Angola',
      'Antigua and Barbuda',
      'Argentina',
      'Armenia',
      'Australia',
      'Austria',
      'Azerbaijan',
      'Bahamas',
      'Bahrain',
      'Bangladesh',
      'Barbados',
      'Belarus',
      'Belgium',
      'Belize',
      'Benin',
      'Bhutan',
      'Bolivia',
      'Bosnia and Herzegovina',
      'Botswana',
      'Brazil',
      'Brunei',
      'Bulgaria',
      'Burkina Faso',
      'Burundi',
      'Cabo Verde',
      'Cambodia',
      'Cameroon',
      'Canada',
      'Central African Republic',
      'Chad',
      'Chile',
      'China',
      'Colombia',
      'Comoros',
      'Congo',
      'Costa Rica',
      'Croatia',
      'Cuba',
      'Cyprus',
      'Czech Republic',
      'Denmark',
      'Djibouti',
      'Dominica',
      'Dominican Republic',
      'Ecuador',
      'Egypt',
      'El Salvador',
      'Equatorial Guinea',
      'Eritrea',
      'Estonia',
      'Eswatini',
      'Ethiopia',
      'Fiji',
      'Finland',
      'France',
      'Gabon',
      'Gambia',
      'Georgia',
      'Germany',
      'Ghana',
      'Greece',
      'Grenada',
      'Guatemala',
      'Guinea',
      'Guinea-Bissau',
      'Guyana',
      'Haiti',
      'Honduras',
      'Hungary',
      'Iceland',
      'India',
      'Indonesia',
      'Iran',
      'Iraq',
      'Ireland',
      'Israel',
      'Italy',
      'Jamaica',
      'Japan',
      'Jordan',
      'Kazakhstan',
      'Kenya',
      'Kiribati',
      'Kosovo',
      'Kuwait',
      'Kyrgyzstan',
      'Laos',
      'Latvia',
      'Lebanon',
      'Lesotho',
      'Liberia',
      'Libya',
      'Liechtenstein',
      'Lithuania',
      'Luxembourg',
      'Madagascar',
      'Malawi',
      'Malaysia',
      'Maldives',
      'Mali',
      'Malta',
      'Marshall Islands',
      'Mauritania',
      'Mauritius',
      'Mexico',
      'Micronesia',
      'Moldova',
      'Monaco',
      'Mongolia',
      'Montenegro',
      'Morocco',
      'Mozambique',
      'Myanmar',
      'Namibia',
      'Nauru',
      'Nepal',
      'Netherlands',
      'New Zealand',
      'Nicaragua',
      'Niger',
      'Nigeria',
      'North Korea',
      'North Macedonia',
      'Norway',
      'Oman',
      'Pakistan',
      'Palau',
      'Palestine',
      'Panama',
      'Papua New Guinea',
      'Paraguay',
      'Peru',
      'Philippines',
      'Poland',
      'Portugal',
      'Qatar',
      'Romania',
      'Russia',
      'Rwanda',
      'Saint Kitts and Nevis',
      'Saint Lucia',
      'Saint Vincent and the Grenadines',
      'Samoa',
      'San Marino',
      'Sao Tome and Principe',
      'Saudi Arabia',
      'Senegal',
      'Serbia',
      'Seychelles',
      'Sierra Leone',
      'Singapore',
      'Slovakia',
      'Slovenia',
      'Solomon Islands',
      'Somalia',
      'South Africa',
      'South Korea',
      'South Sudan',
      'Spain',
      'Sri Lanka',
      'Sudan',
      'Suriname',
      'Sweden',
      'Switzerland',
      'Syria',
      'Taiwan',
      'Tajikistan',
      'Tanzania',
      'Thailand',
      'Timor-Leste',
      'Togo',
      'Tonga',
      'Trinidad and Tobago',
      'Tunisia',
      'Turkey',
      'Turkmenistan',
      'Tuvalu',
      'Uganda',
      'Ukraine',
      'United Arab Emirates',
      'United Kingdom'
    ],
    Topics.fauna: [
      'Aardvark',
      'Albatross',
      'Alligator',
      'Alpaca',
      'Anaconda',
      'Ant',
      'Anteater',
      'Antelope',
      'Armadillo',
      'Baboon',
      'Badger',
      'Barracuda',
      'Bat',
      'Bear',
      'Beaver',
      'Bee',
      'Beetle',
      'Bison',
      'Blackbird',
      'Boa',
      'Boar',
      'Buffalo',
      'Butterfly',
      'Camel',
      'Capybara',
      'Caribou',
      'Cassowary',
      'Cat',
      'Caterpillar',
      'Cattle',
      'Chameleon',
      'Cheetah',
      'Chicken',
      'Chimpanzee',
      'Chinchilla',
      'Chipmunk',
      'Cougar',
      'Coyote',
      'Crab',
      'Crane',
      'Crocodile',
      'Crow',
      'Deer',
      'Dinosaur',
      'Dog',
      'Dolphin',
      'Donkey',
      'Dove',
      'Dragonfly',
      'Duck',
      'Eagle',
      'Eel',
      'Elephant',
      'Elk',
      'Emu',
      'Falcon',
      'Ferret',
      'Finch',
      'Fish',
      'Flamingo',
      'Fly',
      'Fox',
      'Frog',
      'Gazelle',
      'Gecko',
      'Giraffe',
      'Goat',
      'Goose',
      'Gorilla',
      'Grasshopper',
      'Grouse',
      'Guanaco',
      'Gull',
      'Hamster',
      'Hare',
      'Hawk',
      'Hedgehog',
      'Heron',
      'Hippopotamus',
      'Horse',
      'Hummingbird',
      'Hyena',
      'Iguana',
      'Impala',
      'Jackal',
      'Jaguar',
      'Jellyfish',
      'Kangaroo',
      'Kingfisher',
      'Koala',
      'Komodo',
      'Krill',
      'Lemur',
      'Leopard',
      'Lion',
      'Llama',
      'Lobster',
      'Lynx',
      'Macaw',
      'Magpie',
      'Manatee',
      'Mandrill',
      'Mantis',
      'Marmot',
      'Meerkat',
      'Mongoose',
      'Monkey',
      'Moose',
      'Mosquito',
      'Moth',
      'Mouse',
      'Mule',
      'Narwhal',
      'Newt',
      'Nightingale',
      'Octopus',
      'Okapi',
      'Opossum',
      'Ostrich',
      'Otter',
      'Owl',
      'Oyster',
      'Panda',
      'Panther',
      'Parrot',
      'Peacock',
      'Pelican',
      'Penguin',
      'Pheasant',
      'Pig',
      'Pigeon',
      'Polar bear',
      'Porcupine',
      'Porpoise',
      'Possum',
      'Prairie dog',
      'Quail',
      'Rabbit',
      'Raccoon',
      'Rat',
      'Rattlesnake',
      'Raven',
      'Red panda',
      'Red deer',
      'Reindeer',
      'Rhinoceros',
      'Roadrunner',
      'Salamander',
      'Salmon',
      'Sand dollar',
      'Sandpiper',
      'Sardine',
      'Scorpion',
      'Seahorse',
      'Seal',
      'Sea lion',
      'Sea otter',
      'Sea turtle',
      'Shark',
      'Sheep',
      'Shrimp',
      'Skunk',
      'Sloth',
      'Snail',
      'Snake',
      'Snow leopard',
      'Sparrow',
      'Squid',
      'Squirrel',
      'Starfish',
      'Stingray',
      'Stork',
      'Swan',
      'Tapir',
      'Tarantula',
      'Termite',
      'Tiger',
      'Toad',
      'Tortoise',
      'Toucan',
      'Turkey',
      'Turtle',
      'Vampire bat',
      'Vulture',
      'Walrus',
      'Wasp',
      'Weasel',
      'Whale',
      'Whale shark',
      'Wildebeest',
      'Wolf',
      'Wolverine',
      'Wombat',
      'Woodchuck',
      'Woodpecker',
      'Worm',
      'Yak',
      'Zebra'
    ]
  };
}