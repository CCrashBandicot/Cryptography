use Crypt::RC4;

$key = '1337';

sub rc4Decrypt{
    $encode = $_[0];                    
    if(!defined $encode or length $encode == 0){return '';}
    $asciiStr;
    for($i = 0; $i< length $encode;$i=$i+2){
        $asciiStr .= chr(hex(substr($encode,$i,2)));
    }
    $rc4    = Crypt::RC4->new($key);     
    $encrypted = $rc4->RC4($asciiStr);

    return $encrypted;
}


sub rc4Encrypt {
    $message = $_[0];                  
    $rc4       = Crypt::RC4->new($key);
    $encrypted = $rc4->RC4($message);
    $ascii = '';
 
    for ( $i = 0 ; $i < length $encrypted ; $i++ ) {
        $hex = uc( sprintf( '%x', ord( substr( $encrypted, $i, 1 ) ) ) );
        if ( length $hex < 2 ) { $hex = '0'.$hex; }
        $ascii .= $hex;
    }
    return $ascii;
}
