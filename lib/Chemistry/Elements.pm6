use v6;

class Chemistry::Elements {
	# names has Pig Latin, English, German, Russian (so far)
	my %names = (
		  1 => [ < Ydrogenhai Hydrogen Wasserstoff Водород > ],
		  2 => [ < Eliumhai Helium Helium Гелий > ],
		  3 => [ < Ithiumlai Lithium Lithium Литий > ],
		  4 => [ < Erylliumbai Beryllium Beryllium Бериллий > ],
		  5 => [ < Oronbai Boron Bor Бор > ],
		  6 => [ < Arboncai Carbon Kohlenstoff Углерод > ],
		  7 => [ < Itrogennai Nitrogen Stickstoff Азот > ],
		  8 => [ < Xygenoai Oxygen Sauerstoff Кислород > ],
		  9 => [ < Luorinefai Fluorine Fluor Фтор > ],
		 10 => [ < Eonnai Neon Neon Неон > ],
		 11 => [ < Odiumsai Sodium Natrium Натрий > ],
		 12 => [ < Agnesiummai Magnesium Magnesium Магний > ],
		 13 => [ < Luminiumaai Aluminium Aluminium Алюминий > ],
		 14 => [ < Iliconsai Silicon Silizium Кремний > ],
		 15 => [ < Hosphoruspai Phosphorus Phosphor Фосфор > ],
		 16 => [ < Ulfursai Sulfur Schwefel Сера > ],
		 17 => [ < Hlorinecai Chlorine Chlor Хлор > ],
		 18 => [ < Rgonaai Argon Argon Аргон > ],
		 19 => [ < Otassiumpai Potassium Kalium Калий > ],
		 20 => [ < Alciumcai Calcium Calcium Кальций > ],
		 21 => [ < Candiumsai Scandium Scandium Скандий > ],
		 22 => [ < Itaniumtai Titanium Titan Титан > ],
		 23 => [ < Anadiumvai Vanadium Vanadium Ванадий > ],
		 24 => [ < Hromiumcai Chromium Chrom Хром > ],
		 25 => [ < Anganesemai Manganese Mangan Марганец > ],
		 26 => [ < Roniai Iron Eisen Железо > ],
		 27 => [ < Obaltcai Cobalt Cobalt Кобальт > ],
		 28 => [ < Ickelnai Nickel Nickel Никель > ],
		 29 => [ < Oppercai Copper Kupfer Медь > ],
		 30 => [ < Inczai Zinc Zink Цинк > ],
		 31 => [ < Alliumgai Gallium Gallium Галлий > ],
		 32 => [ < Ermaniumgai Germanium Germanium Германий > ],
		 33 => [ < Rsenicaai Arsenic Arsen Мышьяк > ],
		 34 => [ < Eleniumsai Selenium Selen Селен > ],
		 35 => [ < Rominebai Bromine Brom Бром > ],
		 36 => [ < Ryptonkai Krypton Krypton Криптон > ],
		 37 => [ < Ubidiumrai Rubidium Rubidium Рубидий > ],
		 38 => [ < Trontiumsai Strontium Strontium Стронций > ],
		 39 => [ < Ttriumyai Yttrium Yttrium Иттрий > ],
		 40 => [ < Irconiumzai Zirconium Zirconium Цирконий > ],
		 41 => [ < Iobiumnai Niobium Niob Ниобий > ],
		 42 => [ < Olybdenummai Molybdenum Molybdän Молибден > ],
		 43 => [ < Echnetiumtai Technetium Technetium Технеций > ],
		 44 => [ < Utheniumrai Ruthenium Ruthenium Рутений > ],
		 45 => [ < Hodiumrai Rhodium Rhodium Родий > ],
		 46 => [ < Alladiumpai Palladium Palladium Палладий > ],
		 47 => [ < Ilversai Silver Silber Серебро > ],
		 48 => [ < Admiumcai Cadmium Cadmium Кадмий > ],
		 49 => [ < Ndiumiai Indium Indium Индий > ],
		 50 => [ < Intai Tin Zinn Олово > ],
		 51 => [ < Ntimonyaai Antimony Antimon Сурьма > ],
		 52 => [ < Elluriumtai Tellurium Tellur Теллур > ],
		 53 => [ < Odineiai Iodine Iod Иод > ],
		 54 => [ < Enonxai Xenon Xenon Ксенон > ],
		 55 => [ < Esiumcai Cesium Cäsium Цезий > ],
		 56 => [ < Ariumbai Barium Barium Барий > ],
		 57 => [ < Anthanumlai Lanthanum Lanthan Лантан > ],
		 58 => [ < Eriumcai Cerium Cer Церий > ],
		 59 => [ < Raesodymiumpai Praseodymium Praseodym Празеодим > ],
		 60 => [ < Eodymiumnai Neodymium Neodym Неодим > ],
		 61 => [ < Romethiumpai Promethium Promethium Прометий > ],
		 62 => [ < Amariumsai Samarium Samarium Самарий > ],
		 63 => [ < Uropiumeai Europium Europium Европий > ],
		 64 => [ < Adoliniumgai Gadolinium Gadolinium Гадолиний > ],
		 65 => [ < Erbiumtai Terbium Terbium Тербий > ],
		 66 => [ < Ysprosiumdai Dysprosium Dysprosium Диспрозий > ],
		 67 => [ < Olmiumhai Holmium Holmium Гольмий > ],
		 68 => [ < Rbiumeai Erbium Erbium Эрбий > ],
		 69 => [ < Huliumtai Thulium Thulium Тулий > ],
		 70 => [ < Tterbiumyai Ytterbium Ytterbium Иттербий > ],
		 71 => [ < Utetiumlai Lutetium Lutetium Лютеций > ],
		 72 => [ < Afniumhai Hafnium Hafnium Гафний > ],
		 73 => [ < Antalumtai Tantalum Tantal Тантал > ],
		 74 => [ < Ungstentai Tungsten Wolfram Вольфрам > ],
		 75 => [ < Heniumrai Rhenium Rhenium Рений > ],
		 76 => [ < Smiumoai Osmium Osmium Осмий > ],
		 77 => [ < Ridiumiai Iridium Iridium Иридий > ],
		 78 => [ < Latinumpai Platinum Platin Платина > ],
		 79 => [ < Oldgai Gold Gold Золото > ],
		 80 => [ < Ercurymai Mercury Quecksilber Ртуть > ],
		 81 => [ < Halliumtai Thallium Thallium Таллий > ],
		 82 => [ < Eadlai Lead Blei Свинец > ],
		 83 => [ < Ismuthbai Bismuth Bismut Висмут > ],
		 84 => [ < Oloniumpai Polonium Polonium Полоний > ],
		 85 => [ < Statineaai Astatine Astat Астат > ],
		 86 => [ < Adonrai Radon Radon Радон > ],
		 87 => [ < Ranciumfai Francium Francium Франций > ],
		 88 => [ < Adiumrai Radium Radium Радий > ],
		 89 => [ < Ctiniumaai Actinium Actinium Актиний > ],
		 90 => [ < Horiumtai Thorium Thorium Торий > ],
		 91 => [ < Rotactiniumpai Protactinium Protactinium Протактиний > ],
		 92 => [ < Raniumuai Uranium Uran Уран > ],
		 93 => [ < Eptuniumnai Neptunium Neptunium Нептуний > ],
		 94 => [ < Lutoniumpai Plutonium Plutonium Плутоний > ],
		 95 => [ < Mericiumaai Americium Americium Америций > ],
		 96 => [ < Uriumcai Curium Curium Кюрий > ],
		 97 => [ < Erkeliumbai Berkelium Berkelium Берклий > ],
		 98 => [ < Aliforniumcai Californium Californium Калифорний > ],
		 99 => [ < Insteiniumeai Einsteinium Einsteinium Эйнштейний > ],
		100 => [ < Ermiumfai Fermium Fermium Фермий > ],
		101 => [ < Endeleviummai Mendelevium Mendelevium Менделевий > ],
		102 => [ < Obeliumnai Nobelium Nobelium Нобелий > ],
		103 => [ < Awerenciumlai Lawerencium Lawerencium Лоуренсий > ],
		104 => [ < Utherfordiumrai Rutherfordium Rutherfordium Курчатовий > ],
		105 => [ < Ubniumdai Dubnium Dubnium Нильсборий > ],
		106 => [ < Eaborgiumsai Seaborgium Seaborgium Сиборгий > ],
		107 => [ < Ohriumbai Bohrium Bohrium Борий > ],
		108 => [ < Assiumhai Hassium Hassium Хассий > ],
		109 => [ < Eitneriummai Meitnerium Meitnerium Майтнерий > ],
		110 => [ < Armstadtiumdai Darmstadtium Darmstadtium Дармштадтий > ],
		111 => [ < Oentgeniumrai Roentgenium Roentgenium Рентгений > ],
		112 => [ < Operniciumcai Copernicium Copernicium Коперниций > ],
		113 => [ < Nuntriumuai Ununtrium Ununtrium Нихоний > ],     # Nihonium (Nh)
		114 => [ < Leroviumfai Flerovium Flerovium Флеровий > ],
		115 => [ < Nunpentiumuai Ununpentium Ununpentium Московий > ], # Moscovium (Mc)
		116 => [ < Ivermoriumlai Livermorium Livermorium Ливерморий > ],
		117 => [ < Nunseptiumuai Ununseptium Ununseptium Теннессин > ], # Tennessine (Ts)
		118 => [ < Nunoctiumuai Ununoctium Ununoctium Оганесон > ],   # Oganesson (Og)
		);

	subset ZInt of Cool is export where {
		state ( $min, $max ) = %names.keys.sort( { $^a <=> $^b } ).[0,*-1];
		( $_.truncate == $_ and $min <= $_ <= $max )
			or warn "Z must be between a positive whole number from $min to $max. Got <$_>."
		};

	method max_Z () returns ZInt {
		state $max = %names.keys.sort( { $^b <=> $^a } ).[0];
		$max;
		}

	method min_Z () returns ZInt {
		state $min = %names.keys.sort( { $^a <=> $^b } ).[0];
		$min;
		}

	my @elements = <
	H                                                                                                He
	Li Be                                                                           B  C   N  O   F  Ne
	Na Mg                                                                          Al Si   P  S  Cl  Ar
	K  Ca                                           Sc Ti  V Cr Mn Fe Co Ni Cu Zn  Ga Ge  As Se  Br  Kr
	Rb Sr                                            Y Zr Nb Mo Tc Ru Rh Pd Ag Cd  In Sn  Sb Te   I  Xe
	Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W  Re Os Ir Pt Au Hg  Tl Pb  Bi Po  At  Rn
	Fr Ra Ac Th Pa U  Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Ha Sg Bh Hs Mt Ds Rg Cn Uut Fl Uup Lv Uus Uuo
	>
		==> map( { state $n = 0; $n++; $_.Str => item $n } )
		==> my %symbol_to_name;

	# I could perhaps use Z=> above
	# http://stackoverflow.com/questions/39307797/can-i-return-multiple-pairs-from-a-map-feeding-into-a-hash

	subset ChemicalSymbol of Str is export where {
		%symbol_to_name{$_}:exists or warn "<$_> is not a recognized chemical symbol";
		};

	# In the following functions $lang is used to declare the language for the query/result.
	# The lang_str_to_int method converts the language string to the language index.

	method lang_str_to_int (str $l) returns int {
		given $l {
			when "pigLat" {
					return 0;
				}
			when "en" {
					return 1;
				}
			when "de" {
					return 2;
				}
			when "ru" {
					return 3;
			}
			default {
				return 1;
				}
			}
		}

	method get_name_by_Z ( ZInt(Cool) $Z, Str $lang = "default" ) returns Str {
		%names{$Z}[self.lang_str_to_int($lang)];
		}

	method get_name_by_symbol ( ChemicalSymbol $symbol, Str $lang = "default" ) returns Str {
		self.get_name_by_Z( self.get_Z_by_symbol( $symbol ), $lang );
		}

	method get_symbol_by_Z ( ZInt(Cool) $Z ) returns ChemicalSymbol {
		@elements[$Z - 1].Str;
		}
	method get_symbol_by_name ( Str $name ) returns ChemicalSymbol {
		self.get_symbol_by_Z( self.get_Z_by_name( $name ) );
		}

	method get_Z_by_symbol ( ChemicalSymbol $symbol ) returns ZInt {
		%symbol_to_name{$symbol}:exists ?? %symbol_to_name{$symbol} !! die;
		}
	method get_Z_by_name ( Str $name, Str $lang = "default" ) returns ZInt {
		die "get_Z_by_name not yet implemented";
		}

	}
