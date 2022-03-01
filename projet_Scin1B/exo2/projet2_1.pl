#! /usr/bin/perl
use strict;
use warnings;
{

  my $lec;
  my ($fich)=@ARGV;
  my $ligne;
  my $cpt=0;
  my $cpt1=0;
  my $cpt2=0;

  open ( $lec, "<", $fich ) or die "erreur sur $fich";
  while ( <$lec> )
        { $ligne=$_;
        $cpt1++;
          if ( $ligne =~ /http[s]*:\/\/(.*?)["'?]/)
          {
               print "question 1. $1 ligne n°$cpt1\n";
               $cpt++;
               next;
          }
          if ( $ligne =~ /http[s]*:\/\/(.*?)$/)
          {
               print "question 2. $1 ligne n°$cpt1\n";
               $cpt2++;
               next;
          }
       }
  close($lec);
  print "\n";
  print "Il y a $cpt réponses à votre demande de la première question\n";
  print "------------------------------------------------------------\n";
  print "Il y a $cpt2 réponses à votre demande de la deuxieme question\n";
}
