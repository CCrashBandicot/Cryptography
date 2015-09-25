use MIME::Base64;

system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print "\n[+]Enter String To Encode :";
chomp($string = <STDIN>);

print "\n[+]Enter String To Decode :";
chomp($encrypted = <STDIN>);

$encoded = encode_base64($string);
$decoded = decode_base64($encrypted);

print "\tEncoded String :".$encoded."\n";
print "\tDecoded String :".$decoded."\n";
