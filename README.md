
# 1 conversion des données de bruker à ISMSMRMRD

lancer bruker_to_ismrmrd_mp2rage

# 2 

ouvrir deux terminals
dans l'un si le gadgetron n'est pas lancé , taper 

gadgetron

ce message doit apparaitre

gadgetron
2017-08-24 16:50:18 INFO [main.cpp:200] Starting ReST interface on port 9080
2017-08-24 16:50:18 INFO [main.cpp:212] Starting cloudBus: localhost:8002
2017-08-24 16:50:18 INFO [main.cpp:260] Configuring services, Running on port 9002

si ce message apparait

2017-08-24 16:40:29 INFO [main.cpp:200] Starting ReST interface on port 9080
terminate called after throwing an instance of 'boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<boost::system::system_error> >'
  what():  bind: Address already in use
Aborted

il est deja allumé quelque part par soit meme ou un autre utilisateur


dans l'autre :
cd /home/juliem/Dev/Bruker_data
puis taper
time ./command_reco
ou ./command_reco

qui execute la commande suivante  

gadgetron_ismrmrd_client
 -f /home/juliem/Dicom_Data/testdata.h5 
 -c Generic_Cartesian_Grappa_Bruker_3D_NoCompression_export.xml
 -o out.h5


pour lire les images avec matlab utiliser le script 'lecture_image_3D.m' situer dans 'cute/'
et aller chercher le fichier à l'endroit ou est lancé le gadgetron
