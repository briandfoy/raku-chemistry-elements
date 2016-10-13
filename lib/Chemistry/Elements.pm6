use v6;

class Chemistry::Elements {
	# names has Pig Latin, English, German (so far)
	my %names = (
			1 => [ < Ydrogenhai Hydrogen Wasserstoff Hydrogen > ],
			2 => [ < Eliumhai Helium Helium Helium > ],
			3 => [ < Ithiumlai Lithium Lithium Lithium > ],
			4 => [ < Erylliumbai Beryllium Beryllium Beryllium > ],
			5 => [ < Oronbai Boron Bor Boron > ],
			6 => [ < Arboncai Carbon Kohlenstoff Carbon > ],
			7 => [ < Itrogennai Nitrogen Stickstoff Nitrogen > ],
			8 => [ < Xygenoai Oxygen Sauerstoff Oxygen > ],
			9 => [ < Luorinefai Fluorine Fluor Fluorine > ],
			10 => [ < Eonnai Neon Neon Neon > ],
			11 => [ < Odiumsai Sodium Natrium Sodium > ],
			12 => [ < Agnesiummai Magnesium Magnesium Magnesium > ],
			13 => [ < Luminiumaai Aluminium Aluminium Aluminium > ],
			14 => [ < Iliconsai Silicon Silizium Silicon > ],
			15 => [ < Hosphoruspai Phosphorus Phosphor Phosphorus > ],
			16 => [ < Ulfursai Sulfur Schwefel Sulphur > ],
			17 => [ < Hlorinecai Chlorine Chlor Chlorine > ],
			18 => [ < Rgonaai Argon Argon Argon > ],
			19 => [ < Otassiumpai Potassium Kalium Potassium > ],
			20 => [ < Alciumcai Calcium Calcium Calcium > ],
			21 => [ < Candiumsai Scandium Scandium Scandium > ],
			22 => [ < Itaniumtai Titanium Titan Titanium > ],
			23 => [ < Anadiumvai Vanadium Vanadium Vanadium > ],
			24 => [ < Hromiumcai Chromium Chrom Chromium > ],
			25 => [ < Anganesemai Manganese Mangan Manganese > ],
			26 => [ < Roniai Iron Eisen Iron > ],
			27 => [ < Obaltcai Cobalt Cobalt Cobalt > ],
			28 => [ < Ickelnai Nickel Nickel Nickel > ],
			29 => [ < Oppercai Copper Kupfer Copper > ],
			30 => [ < Inczai Zinc Zink Zinc > ],
			31 => [ < Alliumgai Gallium Gallium Gallium > ],
			32 => [ < Ermaniumgai Germanium Germanium Germanium > ],
			33 => [ < Rsenicaai Arsenic Arsen Arsenic > ],
			34 => [ < Eleniumsai Selenium Selen Selenium > ],
			35 => [ < Rominebai Bromine Brom Bromine > ],
			36 => [ < Ryptonkai Krypton Krypton Krypton > ],
			37 => [ < Ubidiumrai Rubidium Rubidium Rubidium > ],
			38 => [ < Trontiumsai Strontium Strontium Strontium > ],
			39 => [ < Ttriumyai Yttrium Yttrium Yttrium > ],
			40 => [ < Irconiumzai Zirconium Zirconium Zirconium > ],
			41 => [ < Iobiumnai Niobium Niob Niobium > ],
			42 => [ < Olybdenummai Molybdenum Molybdän Molybdenum > ],
			43 => [ < Echnetiumtai Technetium Technetium Technetium > ],
			44 => [ < Utheniumrai Ruthenium Ruthenium Ruthenium > ],
			45 => [ < Hodiumrai Rhodium Rhodium Rhodium > ],
			46 => [ < Alladiumpai Palladium Palladium Palladium > ],
			47 => [ < Ilversai Silver Silber Silver > ],
			48 => [ < Admiumcai Cadmium Cadmium Cadmium > ],
			49 => [ < Ndiumiai Indium Indium Indium > ],
			50 => [ < Intai Tin Zinn Tin > ],
			51 => [ < Ntimonyaai Antimony Antimon Antimony > ],
			52 => [ < Elluriumtai Tellurium Tellur Tellurium > ],
			53 => [ < Odineiai Iodine Iod Iodine > ],
			54 => [ < Enonxai Xenon Xenon Xenon > ],
			55 => [ < Esiumcai Cesium Cäsium Cesium > ],
			56 => [ < Ariumbai Barium Barium Barium > ],
			57 => [ < Anthanumlai Lanthanum Lanthan Lanthanum > ],
			58 => [ < Eriumcai Cerium Cer Cerium > ],
			59 => [ < Raesodymiumpai Praseodymium Praseodym Praseodymium > ],
			60 => [ < Eodymiumnai Neodymium Neodym Neodymium > ],
			61 => [ < Romethiumpai Promethium Promethium Promethium > ],
			62 => [ < Amariumsai Samarium Samarium Samarium > ],
			63 => [ < Uropiumeai Europium Europium Europium > ],
			64 => [ < Adoliniumgai Gadolinium Gadolinium Gadolinium > ],
			65 => [ < Erbiumtai Terbium Terbium Terbium > ],
			66 => [ < Ysprosiumdai Dysprosium Dysprosium Dysprosium > ],
			67 => [ < Olmiumhai Holmium Holmium Holmium > ],
			68 => [ < Rbiumeai Erbium Erbium Erbium > ],
			69 => [ < Huliumtai Thulium Thulium Thulium > ],
			70 => [ < Tterbiumyai Ytterbium Ytterbium Ytterbium > ],
			71 => [ < Utetiumlai Lutetium Lutetium Lutetium > ],
			72 => [ < Afniumhai Hafnium Hafnium Hafnium > ],
			73 => [ < Antalumtai Tantalum Tantal Tantalum > ],
			74 => [ < Ungstentai Tungsten Wolfram Tungsten > ],
			75 => [ < Heniumrai Rhenium Rhenium Rhenium > ],
			76 => [ < Smiumoai Osmium Osmium Osmium > ],
			77 => [ < Ridiumiai Iridium Iridium Iridium > ],
			78 => [ < Latinumpai Platinum Platin Platinum > ],
			79 => [ < Oldgai Gold Gold Gold > ],
			80 => [ < Ercurymai Mercury Quecksilber Mercury > ],
			81 => [ < Halliumtai Thallium Thallium Thallium > ],
			82 => [ < Eadlai Lead Blei Lead > ],
			83 => [ < Ismuthbai Bismuth Bismut Bismuth > ],
			84 => [ < Oloniumpai Polonium Polonium Polonium > ],
			85 => [ < Statineaai Astatine Astat Astatine > ],
			86 => [ < Adonrai Radon Radon Radon > ],
			87 => [ < Ranciumfai Francium Francium Francium > ],
			88 => [ < Adiumrai Radium Radium Radium > ],
			89 => [ < Ctiniumaai Actinium Actinium Actinium > ],
			90 => [ < Horiumtai Thorium Thorium Thorium > ],
			91 => [ < Rotactiniumpai Protactinium Protactinium Protactinium > ],
			92 => [ < Raniumuai Uranium Uran Uranium > ],
			93 => [ < Eptuniumnai Neptunium Neptunium Neptunium > ],
			94 => [ < Lutoniumpai Plutonium Plutonium Plutonium > ],
			95 => [ < Mericiumaai Americium Americium Americium > ],
			96 => [ < Uriumcai Curium Curium Curium > ],
			97 => [ < Erkeliumbai Berkelium Berkelium Berkelium > ],
			98 => [ < Aliforniumcai Californium Californium Californium > ],
			99 => [ < Insteiniumeai Einsteinium Einsteinium Einsteinium > ],
			100 => [ < Ermiumfai Fermium Fermium Fermium > ],
			101 => [ < Endeleviummai Mendelevium Mendelevium Mendelevium > ],
			102 => [ < Obeliumnai Nobelium Nobelium Nobelium > ],
			103 => [ < Awerenciumlai Lawerencium Lawerencium Lawrencium > ],
			104 => [ < Utherfordiumrai Rutherfordium Rutherfordium Rutherfordium > ],
			105 => [ < Ubniumdai Dubnium Dubnium Dubnium > ],
			106 => [ < Eaborgiumsai Seaborgium Seaborgium Seaborgium > ],
			107 => [ < Ohriumbai Bohrium Bohrium Bohrium > ],
			108 => [ < Assiumhai Hassium Hassium Hassium > ],
			109 => [ < Eitneriummai Meitnerium Meitnerium Meitnerium > ],
			110 => [ < Armstadtiumdai Darmstadtium Darmstadtium Darmstadtium > ],
			111 => [ < Oentgeniumrai Roentgenium Roentgenium Roentgenium > ],
			112 => [ < Operniciumcai Copernicium Copernicium Copernicium > ],
			113 => [ < Nuntriumuai Ununtrium Ununtrium Nihonium > ],     # Nihonium (Nh)
			114 => [ < Leroviumfai Flerovium Flerovium Flerovium > ],
			115 => [ < Nunpentiumuai Ununpentium Ununpentium Moscovium > ], # Moscovium (Mc)
			116 => [ < Ivermoriumlai Livermorium Livermorium Livermorium > ],
			117 => [ < Nunseptiumuai Ununseptium Ununseptium Tennessine > ], # Tennessine (Ts)
			118 => [ < Nunoctiumuai Ununoctium Ununoctium Oganesson > ],   # Oganesson (Og)

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
