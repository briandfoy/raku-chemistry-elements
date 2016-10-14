use v6;
use Chemistry::Elements;

my $quit = False;
my $mode;

print("This is a simplistic example for the 'Chemistry' module.\n\n");

until $quit {
    print("Please choose:\n");
    print("\t0: Exit!\n");
    print("\t1: atomic number -> name\n");
    print("\t2: symbol -> name\n");
    print("\t3: atomic number -> symbol\n");
    print("\t4: name -> symbol\n");
    print("\t5: name -> atomic number (Warning: not yet implemented!)\n");
    print("\t6: symbol -> atomic number\n");
    $mode = prompt("");

    given $mode {
        when 0 {
            $quit = True;
        }
        when 1 {
            print(Chemistry::Elements.get_name_by_Z(prompt("Enter the atomic number:\n")));
        }
        when 2 {
            print(Chemistry::Elements.get_name_by_symbol(prompt("Enter the symbol:\n")));
        }
        when 3 {
            print(Chemistry::Elements.get_symbol_by_Z(prompt("Enter the atomic number:\n")));
        }
        when 4 {
            print(Chemistry::Elements.get_symbol_by_name(prompt("Enter the atomic number:\n")));
        }
        when 5 {
            print(Chemistry::Elements.get_Z_by_name(prompt("Enter the name:\n")));
        }
        when 6 {
            print(Chemistry::Elements.get_Z_by_symbol(prompt("Enter the symbol:\n")));
        }
    }
    print("\n\n")
}
