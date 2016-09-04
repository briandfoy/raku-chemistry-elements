use v6;

class Chemistry::Elements {
	# can we make this automatically?

	my %names = (
		  1 => [ < Ydrogenhai Hydrogen > ],
		  2 => [ < Eliumhai Helium > ],
		  3 => [ < Ithiumlai Lithium > ],
		  4 => [ < Erylliumbai Beryllium > ],
		  5 => [ < Oronbai Boron > ],
		  6 => [ < Arboncai Carbon > ],
		  7 => [ < Itrogennai Nitrogen > ],
		  8 => [ < Xygenoai Oxygen > ],
		  9 => [ < Luorinefai Fluorine > ],
		 10 => [ < Eonnai Neon > ],
		 11 => [ < Odiumsai Sodium > ],
		 12 => [ < Agnesiummai Magnesium > ],
		 13 => [ < Luminiumaai Aluminium > ],
		 14 => [ < Iliconsai Silicon > ],
		 15 => [ < Hosphoruspai Phosphorus > ],
		 16 => [ < Ulfursai Sulfur > ],
		 17 => [ < Hlorinecai Chlorine > ],
		 18 => [ < Rgonaai Argon > ],
		 19 => [ < Otassiumpai Potassium > ],
		 20 => [ < Alciumcai Calcium > ],
		 21 => [ < Candiumsai Scandium > ],
		 22 => [ < Itaniumtai Titanium > ],
		 23 => [ < Anadiumvai Vanadium > ],
		 24 => [ < Hromiumcai Chromium > ],
		 25 => [ < Anganesemai Manganese > ],
		 26 => [ < Roniai Iron > ],
		 27 => [ < Obaltcai Cobalt > ],
		 28 => [ < Ickelnai Nickel > ],
		 29 => [ < Oppercai Copper > ],
		 30 => [ < Inczai Zinc > ],
		 31 => [ < Alliumgai Gallium > ],
		 32 => [ < Ermaniumgai Germanium > ],
		 33 => [ < Rsenicaai Arsenic > ],
		 34 => [ < Eleniumsai Selenium > ],
		 35 => [ < Rominebai Bromine > ],
		 36 => [ < Ryptonkai Krypton > ],
		 37 => [ < Ubidiumrai Rubidium > ],
		 38 => [ < Trontiumsai Strontium > ],
		 39 => [ < Ttriumyai Yttrium > ],
		 40 => [ < Irconiumzai Zirconium > ],
		 41 => [ < Iobiumnai Niobium > ],
		 42 => [ < Olybdenummai Molybdenum > ],
		 43 => [ < Echnetiumtai Technetium > ],
		 44 => [ < Utheniumrai Ruthenium > ],
		 45 => [ < Hodiumrai Rhodium > ],
		 46 => [ < Alladiumpai Palladium > ],
		 47 => [ < Ilversai Silver > ],
		 48 => [ < Admiumcai Cadmium > ],
		 49 => [ < Ndiumiai Indium > ],
		 50 => [ < Intai Tin > ],
		 51 => [ < Ntimonyaai Antimony > ],
		 52 => [ < Elluriumtai Tellurium > ],
		 53 => [ < Odineiai Iodine > ],
		 54 => [ < Enonxai Xenon > ],
		 55 => [ < Esiumcai Cesium > ],
		 56 => [ < Ariumbai Barium > ],
		 57 => [ < Anthanumlai Lanthanum > ],
		 58 => [ < Eriumcai Cerium > ],
		 59 => [ < Raesodymiumpai Praesodymium > ],
		 60 => [ < Eodymiumnai Neodymium > ],
		 61 => [ < Romethiumpai Promethium > ],
		 62 => [ < Amariumsai Samarium > ],
		 63 => [ < Uropiumeai Europium > ],
		 64 => [ < Adoliniumgai Gadolinium > ],
		 65 => [ < Erbiumtai Terbium > ],
		 66 => [ < Ysprosiumdai Dysprosium > ],
		 67 => [ < Olmiumhai Holmium > ],
		 68 => [ < Rbiumeai Erbium > ],
		 69 => [ < Huliumtai Thulium > ],
		 70 => [ < Tterbiumyai Ytterbium > ],
		 71 => [ < Utetiumlai Lutetium > ],
		 72 => [ < Afniumhai Hafnium > ],
		 73 => [ < Antalumtai Tantalum > ],
		 74 => [ < Ungstentai Tungsten > ],
		 75 => [ < Heniumrai Rhenium > ],
		 76 => [ < Smiumoai Osmium > ],
		 77 => [ < Ridiumiai Iridium > ],
		 78 => [ < Latinumpai Platinum > ],
		 79 => [ < Oldgai Gold > ],
		 80 => [ < Ercurymai Mercury > ],
		 81 => [ < Halliumtai Thallium > ],
		 82 => [ < Eadlai Lead > ],
		 83 => [ < Ismuthbai Bismuth > ],
		 84 => [ < Oloniumpai Polonium > ],
		 85 => [ < Statineaai Astatine > ],
		 86 => [ < Adonrai Radon > ],
		 87 => [ < Ranciumfai Francium > ],
		 88 => [ < Adiumrai Radium > ],
		 89 => [ < Ctiniumaai Actinium > ],
		 90 => [ < Horiumtai Thorium > ],
		 91 => [ < Rotactiniumpai Protactinium > ],
		 92 => [ < Raniumuai Uranium > ],
		 93 => [ < Eptuniumnai Neptunium > ],
		 94 => [ < Lutoniumpai Plutonium > ],
		 95 => [ < Mericiumaai Americium > ],
		 96 => [ < Uriumcai Curium > ],
		 97 => [ < Erkeliumbai Berkelium > ],
		 98 => [ < Aliforniumcai Californium > ],
		 99 => [ < Insteiniumeai Einsteinium > ],
		100 => [ < Ermiumfai Fermium > ],
		101 => [ < Endeleviummai Mendelevium > ],
		102 => [ < Obeliumnai Nobelium > ],
		103 => [ < Awerenciumlai Lawerencium > ],
		104 => [ < Utherfordiumrai Rutherfordium > ],
		105 => [ < Ubniumdai Dubnium > ],
		106 => [ < Eaborgiumsai Seaborgium > ],
		107 => [ < Ohriumbai Bohrium > ],
		108 => [ < Assiumhai Hassium > ],
		109 => [ < Eitneriummai Meitnerium > ],
		110 => [ < Armstadtiumdai Darmstadtium > ],
		111 => [ < Oentgeniumrai Roentgenium > ],
		112 => [ < Operniciumcai Copernicium > ],
		113 => [ < Nuntriumuai Ununtrium > ],     # Nihonium (Nh)
		114 => [ < Leroviumfai Flerovium > ],
		115 => [ < Nunpentiumuai Ununpentium > ], # Moscovium (Mc)
		116 => [ < Ivermoriumlai Livermorium > ],
		117 => [ < Nunseptiumuai Ununseptium > ], # Tennessine (Ts)
		118 => [ < Nunoctiumuai Ununoctium > ],   # Oganesson (Og)
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

	subset ChemicalSymbol of Str is export where {
		%symbol_to_name{$_}:exists or warn "<$_> is not a recognized chemical symbol";
		};

	method get_name_by_Z ( ZInt(Cool) $Z ) returns Str {
		%names{$Z}[*-1];
		}
	method get_name_by_symbol ( ChemicalSymbol $symbol ) returns Str {
		self.get_name_by_Z( self.get_Z_by_symbol( $symbol ) );
		}

	method get_symbol_by_Z ( ZInt(Cool) $Z ) returns ChemicalSymbol {
		@elements[$Z - 1].Str;
		}

	method get_Z_by_symbol ( ChemicalSymbol $symbol ) returns ZInt {
		%symbol_to_name{$symbol}:exists ?? %symbol_to_name{$symbol} !! die;
		}
		}

	}
