# C:\Perl\bin\>ppm
# ppm> install Text-Morse

use Text::Morse;

system(($^O eq 'MSWin32') ? 'cls' : 'clear');

  print "\n[+]Enter String To Encode :";
  chomp($encode = <STDIN>);

  print "\n[+]Enter String To Decode :";
  chomp($decoded = <STDIN>);

  $morse = new Text::Morse;
 

  $d = scalar($morse->Decode($decoded));
  $e = scalar($morse->Encode($encode));
  
 print "Decoded : ".$d."\n";
 print "Encoded : ".$e."\n";
