use v6;

class Chemistry::Elements {
	# names has Pig Latin, English, German (so far)
	my %names = (
		  1 => [ < Ydrogenhai Hydrogen Wasserstoff > ],
		  2 => [ < Eliumhai Helium Helium > ],
		  3 => [ < Ithiumlai Lithium Lithium > ],
		  4 => [ < Erylliumbai Beryllium Beryllium > ],
		  5 => [ < Oronbai Boron Bor > ],
		  6 => [ < Arboncai Carbon Kohlenstoff> ],
		  7 => [ < Itrogennai Nitrogen Stickstoff > ],
		  8 => [ < Xygenoai Oxygen Sauerstoff > ],
		  9 => [ < Luorinefai Fluorine Fluor > ],
		 10 => [ < Eonnai Neon Neon > ],
		 11 => [ < Odiumsai Sodium Natrium > ],
		 12 => [ < Agnesiummai Magnesium Magnesium > ],
		 13 => [ < Luminiumaai Aluminium Aluminium > ],
		 14 => [ < Iliconsai Silicon Silizium > ],
		 15 => [ < Hosphoruspai Phosphorus Phosphor > ],
		 16 => [ < Ulfursai Sulfur Schwefel > ],
		 17 => [ < Hlorinecai Chlorine Chlor > ],
		 18 => [ < Rgonaai Argon Argon > ],
		 19 => [ < Otassiumpai Potassium Kalium > ],
		 20 => [ < Alciumcai Calcium Calcium > ],
		 21 => [ < Candiumsai Scandium Scandium > ],
		 22 => [ < Itaniumtai Titanium Titan > ],
		 23 => [ < Anadiumvai Vanadium Vanadium > ],
		 24 => [ < Hromiumcai Chromium Chrom > ],
		 25 => [ < Anganesemai Manganese Mangan > ],
		 26 => [ < Roniai Iron Eisen > ],
		 27 => [ < Obaltcai Cobalt Cobalt > ],
		 28 => [ < Ickelnai Nickel Nickel > ],
		 29 => [ < Oppercai Copper Kupfer > ],
		 30 => [ < Inczai Zinc Zink > ],
		 31 => [ < Alliumgai Gallium Gallium > ],
		 32 => [ < Ermaniumgai Germanium Germanium > ],
		 33 => [ < Rsenicaai Arsenic Arsen > ],
		 34 => [ < Eleniumsai Selenium Selen > ],
		 35 => [ < Rominebai Bromine Brom > ],
		 36 => [ < Ryptonkai Krypton Krypton > ],
		 37 => [ < Ubidiumrai Rubidium Rubidium > ],
		 38 => [ < Trontiumsai Strontium Strontium > ],
		 39 => [ < Ttriumyai Yttrium Yttrium > ],
		 40 => [ < Irconiumzai Zirconium Zirconium > ],
		 41 => [ < Iobiumnai Niobium Niob > ],
		 42 => [ < Olybdenummai Molybdenum Molybdän > ],
		 43 => [ < Echnetiumtai Technetium Technetium > ],
		 44 => [ < Utheniumrai Ruthenium Ruthenium > ],
		 45 => [ < Hodiumrai Rhodium Rhodium > ],
		 46 => [ < Alladiumpai Palladium Palladium > ],
		 47 => [ < Ilversai Silver Silber > ],
		 48 => [ < Admiumcai Cadmium Cadmium > ],
		 49 => [ < Ndiumiai Indium Indium > ],
		 50 => [ < Intai Tin Zinn > ],
		 51 => [ < Ntimonyaai Antimony Antimon > ],
		 52 => [ < Elluriumtai Tellurium Tellur > ],
		 53 => [ < Odineiai Iodine Iod > ],
		 54 => [ < Enonxai Xenon Xenon > ],
		 55 => [ < Esiumcai Cesium Cäsium > ],
		 56 => [ < Ariumbai Barium Barium > ],
		 57 => [ < Anthanumlai Lanthanum Lanthan > ],
		 58 => [ < Eriumcai Cerium Cer > ],
		 59 => [ < Raesodymiumpai Praseodymium Praseodym > ],
		 60 => [ < Eodymiumnai Neodymium Neodym > ],
		 61 => [ < Romethiumpai Promethium Promethium > ],
		 62 => [ < Amariumsai Samarium Samarium > ],
		 63 => [ < Uropiumeai Europium Europium > ],
		 64 => [ < Adoliniumgai Gadolinium Gadolinium > ],
		 65 => [ < Erbiumtai Terbium Terbium > ],
		 66 => [ < Ysprosiumdai Dysprosium Dysprosium > ],
		 67 => [ < Olmiumhai Holmium Holmium > ],
		 68 => [ < Rbiumeai Erbium Erbium > ],
		 69 => [ < Huliumtai Thulium Thulium > ],
		 70 => [ < Tterbiumyai Ytterbium Ytterbium > ],
		 71 => [ < Utetiumlai Lutetium Lutetium > ],
		 72 => [ < Afniumhai Hafnium Hafnium > ],
		 73 => [ < Antalumtai Tantalum Tantal > ],
		 74 => [ < Ungstentai Tungsten Wolfram > ],
		 75 => [ < Heniumrai Rhenium Rhenium > ],
		 76 => [ < Smiumoai Osmium Osmium > ],
		 77 => [ < Ridiumiai Iridium Iridium > ],
		 78 => [ < Latinumpai Platinum Platin > ],
		 79 => [ < Oldgai Gold Gold > ],
		 80 => [ < Ercurymai Mercury Quecksilber > ],
		 81 => [ < Halliumtai Thallium Thallium > ],
		 82 => [ < Eadlai Lead Blei > ],
		 83 => [ < Ismuthbai Bismuth Bismut > ],
		 84 => [ < Oloniumpai Polonium Polonium > ],
		 85 => [ < Statineaai Astatine Astat > ],
		 86 => [ < Adonrai Radon Radon > ],
		 87 => [ < Ranciumfai Francium Francium > ],
		 88 => [ < Adiumrai Radium Radium > ],
		 89 => [ < Ctiniumaai Actinium Actinium > ],
		 90 => [ < Horiumtai Thorium Thorium > ],
		 91 => [ < Rotactiniumpai Protactinium Protactinium > ],
		 92 => [ < Raniumuai Uranium Uran > ],
		 93 => [ < Eptuniumnai Neptunium Neptunium > ],
		 94 => [ < Lutoniumpai Plutonium Plutonium > ],
		 95 => [ < Mericiumaai Americium Americium > ],
		 96 => [ < Uriumcai Curium Curium > ],
		 97 => [ < Erkeliumbai Berkelium Berkelium > ],
		 98 => [ < Aliforniumcai Californium Californium > ],
		 99 => [ < Insteiniumeai Einsteinium Einsteinium > ],
		100 => [ < Ermiumfai Fermium Fermium > ],
		101 => [ < Endeleviummai Mendelevium Mendelevium > ],
		102 => [ < Obeliumnai Nobelium Nobelium > ],
		103 => [ < Awerenciumlai Lawerencium Lawerencium > ],
		104 => [ < Utherfordiumrai Rutherfordium Rutherfordium > ],
		105 => [ < Ubniumdai Dubnium Dubnium > ],
		106 => [ < Eaborgiumsai Seaborgium Seaborgium > ],
		107 => [ < Ohriumbai Bohrium Bohrium > ],
		108 => [ < Assiumhai Hassium Hassium > ],
		109 => [ < Eitneriummai Meitnerium Meitnerium > ],
		110 => [ < Armstadtiumdai Darmstadtium Darmstadtium > ],
		111 => [ < Oentgeniumrai Roentgenium Roentgenium > ],
		112 => [ < Operniciumcai Copernicium Copernicium > ],
		113 => [ < Nuntriumuai Ununtrium Ununtrium > ],     # Nihonium (Nh)
		114 => [ < Leroviumfai Flerovium Flerovium > ],
		115 => [ < Nunpentiumuai Ununpentium Ununpentium > ], # Moscovium (Mc)
		116 => [ < Ivermoriumlai Livermorium Livermorium > ],
		117 => [ < Nunseptiumuai Ununseptium Ununseptium > ], # Tennessine (Ts)
		118 => [ < Nunoctiumuai Ununoctium Ununoctium > ],   # Oganesson (Og)
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

	# In the following functions $lang is used to declare the language for the query/result

	method get_name_by_Z ( ZInt(Cool) $Z, int $lang ) returns Str {
		%names{$Z}[$lang];
		}
	method get_name_by_symbol ( ChemicalSymbol $symbol, int $lang ) returns Str {
		self.get_name_by_Z( self.get_Z_by_symbol( $symbol ) );
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
	method get_Z_by_name ( Str $name, int $lang ) returns ZInt {
		die "get_Z_by_name not yet implemented";
		}

	}
