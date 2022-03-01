#! /usr/bin/perl
use strict;
use warnings;
{

  my $lec;
  my ($fich)=@ARGV;
  my $ligne;

  open ( $lec, "<", $fich ) or die "erreur sur $fich";
  while ( <$lec> )
        { $ligne=$_;
          if ( $ligne =~ /<title>(.*)<\/title>/ )
             {
               print "$fich $1";
             }
          if ( $ligne =~ /<title>()<\/title>/ )
                {
                  print "pas de titre";
              }
         }
  close($lec);
  print "\n";
}
