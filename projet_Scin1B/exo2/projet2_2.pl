#! /usr/bin/perl
use strict;
use warnings;
{

  my $lec;
  my ($fich)=@ARGV;
  my $ligne;
  my $fich1="pagei.html_url";
  my $ecr;
  my $ecr1;
  my $cpt=0;
  my $ctp1=0;

  open ( $lec, "<", $fich ) or die "erreur sur $fich";
  open ( $ecr, ">", $fich1) or die "erreur sur $fich1";
  open ( $ecr1, ">>", $fich1) or die "erreur sur $fich1";
  while ( <$lec> )
        { $ligne=$_;
          if ( $ligne =~ /http[s]*:\/\/(.*?)["'?]/)
          {
               print $ecr "$1\n";
               $cpt++;
               next;
          }
          if ( $ligne =~ /http[s]*:\/\/(.*?)$/)
          {
               print $ecr1 "$1\n";
               $cpt++;
               next;
          }
       }
  close($lec);
  close ($ecr);
  close ($ecr1);
  print "\n";
  print "Fichier: $fich\n";
  print "Il y a $cpt réponses à votre demande de la première question\n";
  print "\n";

}
