#!/usr/bin/perl


system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print "\n [+] Put string to be encrypted or decrypted :";
chomp($input = <STDIN>);
@ascii_char;
$char;
while($input =~ m/(.)/g) {
    push @ascii_char, ord $1;
}

open $ENCRYPTED_STRING, '>', \$encrypted_string;
foreach( @ascii_char ) {
    if ($_ >= 97 and $_ <= 122) {
        if ((122 - $_) <13 ){
            $_ = 97 + (13 - (123 - $_));
        }
        else {
            $_ += 13;
        }
    }
    elsif ($_ >= 65 and $_ <= 90) {
        if ((90 - $_) < 13 ){
            $_ = 65 + (13 - (91 - $_));
        }
        else {
            $_ += 13;
        }
    }

    print $ENCRYPTED_STRING chr;
}
close $ENCRYPTED_STRING;

print "\n".$encrypted_string."\n";
