use Crypt::TripleDES;

system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print "Put PassPhrase :";
    chomp($passphrase = <STDIN>);

print "Put Text :";
    chomp($plaintext = <STDIN>);

$des = new Crypt::TripleDES; 

#  Encrypt
$cyphertext = $des->encrypt3 ( $plaintext, $passphrase );

print "\n\t Cypher Text : $cyphertext";

#  Decrypt 
# $plaintext = $des->decrypt3 ( $cyphertext, $passphrase );

# print "\n\t Plain Text : $plaintext";
