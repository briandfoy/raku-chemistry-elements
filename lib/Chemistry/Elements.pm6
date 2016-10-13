use v6;

class Chemistry::Elements {
	# names has Pig Latin, English, German, British English, Russian (so far)
	my %names = (
			1 => [ < Ydrogenhai Hydrogen Wasserstoff Hydrogen Водород > ],
			2 => [ < Eliumhai Helium Helium Helium Гелий > ],
			3 => [ < Ithiumlai Lithium Lithium Lithium Литий > ],
			4 => [ < Erylliumbai Beryllium Beryllium Beryllium Бериллий > ],
			5 => [ < Oronbai Boron Bor Boron Бор > ],
			6 => [ < Arboncai Carbon Kohlenstoff Carbon Углерод > ],
			7 => [ < Itrogennai Nitrogen Stickstoff Nitrogen Азот > ],
			8 => [ < Xygenoai Oxygen Sauerstoff Oxygen Кислород > ],
			9 => [ < Luorinefai Fluorine Fluor Fluorine Фтор > ],
			10 => [ < Eonnai Neon Neon Neon Неон > ],
			11 => [ < Odiumsai Sodium Natrium Sodium Натрий > ],
			12 => [ < Agnesiummai Magnesium Magnesium Magnesium Магний > ],
			13 => [ < Luminiumaai Aluminium Aluminium Aluminium Алюминий > ],
			14 => [ < Iliconsai Silicon Silizium Silicon Кремний > ],
			15 => [ < Hosphoruspai Phosphorus Phosphor Phosphorus Фосфор > ],
			16 => [ < Ulfursai Sulfur Schwefel Sulphur Сера > ],
			17 => [ < Hlorinecai Chlorine Chlor Chlorine Хлор > ],
			18 => [ < Rgonaai Argon Argon Argon Аргон > ],
			19 => [ < Otassiumpai Potassium Kalium Potassium Калий > ],
			20 => [ < Alciumcai Calcium Calcium Calcium Кальций > ],
			21 => [ < Candiumsai Scandium Scandium Scandium Скандий > ],
			22 => [ < Itaniumtai Titanium Titan Titanium Титан > ],
			23 => [ < Anadiumvai Vanadium Vanadium Vanadium Ванадий > ],
			24 => [ < Hromiumcai Chromium Chrom Chromium Хром > ],
			25 => [ < Anganesemai Manganese Mangan Manganese Марганец > ],
			26 => [ < Roniai Iron Eisen Iron Железо > ],
			27 => [ < Obaltcai Cobalt Cobalt Cobalt Кобальт > ],
			28 => [ < Ickelnai Nickel Nickel Nickel Никель > ],
			29 => [ < Oppercai Copper Kupfer Copper Медь > ],
			30 => [ < Inczai Zinc Zink Zinc Цинк > ],
			31 => [ < Alliumgai Gallium Gallium Gallium Галлий > ],
			32 => [ < Ermaniumgai Germanium Germanium Germanium Германий > ],
			33 => [ < Rsenicaai Arsenic Arsen Arsenic Мышьяк > ],
			34 => [ < Eleniumsai Selenium Selen Selenium Селен > ],
			35 => [ < Rominebai Bromine Brom Bromine Бром > ],
			36 => [ < Ryptonkai Krypton Krypton Krypton Криптон > ],
			37 => [ < Ubidiumrai Rubidium Rubidium Rubidium Рубидий > ],
			38 => [ < Trontiumsai Strontium Strontium Strontium Стронций > ],
			39 => [ < Ttriumyai Yttrium Yttrium Yttrium Иттрий > ],
			40 => [ < Irconiumzai Zirconium Zirconium Zirconium Цирконий > ],
			41 => [ < Iobiumnai Niobium Niob Niobium Ниобий > ],
			42 => [ < Olybdenummai Molybdenum Molybdän Molybdenum Молибден > ],
			43 => [ < Echnetiumtai Technetium Technetium Technetium Технеций > ],
			44 => [ < Utheniumrai Ruthenium Ruthenium Ruthenium Рутений > ],
			45 => [ < Hodiumrai Rhodium Rhodium Rhodium Родий > ],
			46 => [ < Alladiumpai Palladium Palladium Palladium Палладий > ],
			47 => [ < Ilversai Silver Silber Silver Серебро > ],
			48 => [ < Admiumcai Cadmium Cadmium Cadmium Кадмий > ],
			49 => [ < Ndiumiai Indium Indium Indium Индий > ],
			50 => [ < Intai Tin Zinn Tin Олово > ],
			51 => [ < Ntimonyaai Antimony Antimon Antimony Сурьма > ],
			52 => [ < Elluriumtai Tellurium Tellur Tellurium Теллур > ],
			53 => [ < Odineiai Iodine Iod Iodine Йод > ],
			54 => [ < Enonxai Xenon Xenon Xenon Ксенон > ],
			55 => [ < Esiumcai Cesium Cäsium Cesium Цезий > ],
			56 => [ < Ariumbai Barium Barium Barium Барий > ],
			57 => [ < Anthanumlai Lanthanum Lanthan Lanthanum Лантан > ],
			58 => [ < Eriumcai Cerium Cer Cerium Церий > ],
			59 => [ < Raesodymiumpai Praseodymium Praseodym Praseodymium Празеодим > ],
			60 => [ < Eodymiumnai Neodymium Neodym Neodymium Неодим > ],
			61 => [ < Romethiumpai Promethium Promethium Promethium Прометий > ],
			62 => [ < Amariumsai Samarium Samarium Samarium Самарий > ],
			63 => [ < Uropiumeai Europium Europium Europium Европий > ],
			64 => [ < Adoliniumgai Gadolinium Gadolinium Gadolinium Гадолиний > ],
			65 => [ < Erbiumtai Terbium Terbium Terbium Тербий > ],
			66 => [ < Ysprosiumdai Dysprosium Dysprosium Dysprosium Диспрозий > ],
			67 => [ < Olmiumhai Holmium Holmium Holmium Гольмий > ],
			68 => [ < Rbiumeai Erbium Erbium Erbium Эрбий > ],
			69 => [ < Huliumtai Thulium Thulium Thulium Тулий > ],
			70 => [ < Tterbiumyai Ytterbium Ytterbium Ytterbium Иттербий > ],
			71 => [ < Utetiumlai Lutetium Lutetium Lutetium Лютеций > ],
			72 => [ < Afniumhai Hafnium Hafnium Hafnium Гафний > ],
			73 => [ < Antalumtai Tantalum Tantal Tantalum Тантал > ],
			74 => [ < Ungstentai Tungsten Wolfram Tungsten Вольфрам > ],
			75 => [ < Heniumrai Rhenium Rhenium Rhenium Рений > ],
			76 => [ < Smiumoai Osmium Osmium Osmium Осмий > ],
			77 => [ < Ridiumiai Iridium Iridium Iridium Иридий > ],
			78 => [ < Latinumpai Platinum Platin Platinum Платина > ],
			79 => [ < Oldgai Gold Gold Gold Золото > ],
			80 => [ < Ercurymai Mercury Quecksilber Mercury Ртуть > ],
			81 => [ < Halliumtai Thallium Thallium Thallium Таллий > ],
			82 => [ < Eadlai Lead Blei Lead Свинец > ],
			83 => [ < Ismuthbai Bismuth Bismut Bismuth Висмут > ],
			84 => [ < Oloniumpai Polonium Polonium Polonium Полоний > ],
			85 => [ < Statineaai Astatine Astat Astatine Астат(ин) > ],
			86 => [ < Adonrai Radon Radon Radon Радон > ],
			87 => [ < Ranciumfai Francium Francium Francium Франций > ],
			88 => [ < Adiumrai Radium Radium Radium Радий > ],
			89 => [ < Ctiniumaai Actinium Actinium Actinium Актиний > ],
			90 => [ < Horiumtai Thorium Thorium Thorium Торий > ],
			91 => [ < Rotactiniumpai Protactinium Protactinium Protactinium Протактиний > ],
			92 => [ < Raniumuai Uranium Uran Uranium Уран > ],
			93 => [ < Eptuniumnai Neptunium Neptunium Neptunium Нептуний > ],
			94 => [ < Lutoniumpai Plutonium Plutonium Plutonium Плутоний > ],
			95 => [ < Mericiumaai Americium Americium Americium Америций > ],
			96 => [ < Uriumcai Curium Curium Curium Кюрий > ],
			97 => [ < Erkeliumbai Berkelium Berkelium Berkelium Берклий > ],
			98 => [ < Aliforniumcai Californium Californium Californium Калифорний > ],
			99 => [ < Insteiniumeai Einsteinium Einsteinium Einsteinium Эйнштейний > ],
			100 => [ < Ermiumfai Fermium Fermium Fermium Фермий > ],
			101 => [ < Endeleviummai Mendelevium Mendelevium Mendelevium Менделевий > ],
			102 => [ < Obeliumnai Nobelium Nobelium Nobelium Нобелий > ],
			103 => [ < Awerenciumlai Lawerencium Lawerencium Lawrencium Лоуренсий > ],
			104 => [ < Utherfordiumrai Rutherfordium Rutherfordium Rutherfordium Резерфордий > ],
			105 => [ < Ubniumdai Dubnium Dubnium Dubnium Дубний > ],
			106 => [ < Eaborgiumsai Seaborgium Seaborgium Seaborgium Сиборгий > ],
			107 => [ < Ohriumbai Bohrium Bohrium Bohrium Борий > ],
			108 => [ < Assiumhai Hassium Hassium Hassium Хассий > ],
			109 => [ < Eitneriummai Meitnerium Meitnerium Meitnerium Майтнерий > ],
			110 => [ < Armstadtiumdai Darmstadtium Darmstadtium Darmstadtium Дармштадтий > ],
			111 => [ < Oentgeniumrai Roentgenium Roentgenium Roentgenium Рентгений > ],
			112 => [ < Operniciumcai Copernicium Copernicium Copernicium Коперниций > ],
			113 => [ < Nuntriumuai Ununtrium Ununtrium Nihonium Нихоний > ],     # Nihonium (Nh)
			114 => [ < Leroviumfai Flerovium Flerovium Flerovium Флеровий > ],
			115 => [ < Nunpentiumuai Ununpentium Ununpentium Moscovium Московий > ], # Moscovium (Mc)
			116 => [ < Ivermoriumlai Livermorium Livermorium Livermorium Ливерморий > ],
			117 => [ < Nunseptiumuai Ununseptium Ununseptium Tennessine Теннессин > ], # Tennessine (Ts)
			118 => [ < Nunoctiumuai Ununoctium Ununoctium Oganesson Оганесон > ],   # Oganesson (Og)


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
			when "brit" {
					return 3;
				}
			when "ru" {
					return 4;
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
