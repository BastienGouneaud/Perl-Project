#! /usr/bin/perl
use strict;
use warnings;
{

  my $lec;
  my ($fich)=@ARGV;
  my $fich2="tempo1";
  my $ecr;
  my $ligne;

  my $lec2;
  my $fich3="tempo2";
  my $ecr2;
  my $ligne2;

  my $lec3;
  my $fich4="tempo3";
  my $ecr3;
  my $ligne3;

  my $lec4;
  my $fich5="tempo4";
  my $ecr4;
  my $ligne4;

  my $lec5;
  my $fich6="pagei.html_keyword";
  my $ecr5;
  my $ligne5;

  open ( $lec, "<", $fich ) or die "erreur sur $fich";
  open ( $ecr, ">", $fich2) or die "erreur sur $fich2";

  while ( <$lec> )
        {
          $ligne=$_;
          if ( $ligne =~ /(.*)/ )
             {
               chomp($ligne);
               print $ecr "$ligne";
             }
         }

  close($lec);
  close($ecr);

  open ( $lec2, "<", $fich2 ) or die "erreur sur $fich2";
  open ( $ecr2, ">", $fich3) or die "erreur sur $fich3";

  while ( <$lec2> )
        {
          $ligne2=$_;
          $ligne2 =~ s/>/>\n/g;
          print $ecr2 "$ligne2";

         }
  close($lec2);
  close($ecr2);

  open ( $lec3, "<", $fich3 ) or die "erreur sur $fich3";
  open ( $ecr3, ">", $fich4) or die "erreur sur $fich4";

  while ( <$lec3> )
        {
          $ligne3=$_;
          if ( $ligne3 =~ /<meta name="keywords" content="(.*?)"/i )
             {
               print $ecr3 "$1";
             }
         }
  close($lec3);
  close($ecr3);


  open ( $lec4, "<", $fich4 ) or die "erreur sur $fich3";
  open ( $ecr4, ">", $fich5) or die "erreur sur $fich5";
  while ( <$lec4> )
        {
          $ligne4=$_;
             {
               $ligne4=$_;
               $ligne4 =~ s/, /\n/g;
               print $ecr4 "$ligne4";
             }
        }
  close($lec4);
  close($ecr4);

  open ( $lec5, "<", $fich5 ) or die "erreur sur $fich5";
  open ( $ecr5, ">>", $fich6) or die "erreur sur $fich6";
  while ( <$lec5> )
        {
          $ligne5=$_;
             {
               $ligne5=$_;
               $ligne5 =~ s/,/\n/g;
               print $ecr5 "$ligne5";
             }
        }
  close($lec5);
  close($ecr5);
}
