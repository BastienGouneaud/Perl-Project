
mkdir nb_keywords
for i in page*.html
do
    ./projet3.pl $i
    mv pagei.html_keyword $i"_keyword"
    echo "Résulats trouvés pour le fichier $i"
    mv $i"_keyword" nb_keywords
done
rm tempo1
rm tempo2
rm tempo3
rm tempo4
echo "Résulat de votre recherche dans le dossier nb_keywords"
