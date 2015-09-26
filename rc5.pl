# C:\Perl\bin>ppm
# ppm> install Crypt-RC5
use Crypt::RC5;

system(($^O eq 'MSWin32') ? 'cls' : 'clear');

  print "\n[+]Enter String :";
  chomp($encode = <STDIN>);

$key = "1337";

# Encrypt
$ref = Crypt::RC5->new( $key, $encode );
$ciphertext = $ref->encrypt( $plaintext );

print $ciphertext;

# Decrypt
# $ref2 = Crypt::RC5->new( $key, $encode );
# $plaintext = $ref2->decrypt( $ciphertext );

# print $plaintext;
