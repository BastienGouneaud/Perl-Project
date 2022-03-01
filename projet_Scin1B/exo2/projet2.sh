mkdir nb_url
for i in page*.html
do
    echo "Résultat pour la '$i' dans nb_url"
    ./projet2_2.pl $i>>$i"_url"
    mv $i"_url" nb_url
    rm pagei.html_url
done
