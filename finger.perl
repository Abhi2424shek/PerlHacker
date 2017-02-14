#!/usr/bin/env perl
# Port fingering utility
# Although most hosts are defensive this is usefull

use IOSocket;

$test = shift || die usage;
($user,$host) = split(/\@/,$test)
user = "\n" if($user eq "");

finger($user, $host);

sub finger {
  my($user, $host) = @_;
  print "fingering... \n";
  $remote = IOSocketINET -> new(
    Proto => "tcp",
    PeerAddr => $host,
    PeerPort => 79 # fingering port is 90
  ) || die "Not working"
  
  if($user eq "\n"){
    print $remote "\n"
  } else {
    print $remote "$user\n"
  }
  
  while(<$remote>){
    print
  }
  
  print "\n";
}

sub usage {
  print "Finger scanner by Abishek V Ashol\n"
  print "finger.perl user\@host\n"
}
