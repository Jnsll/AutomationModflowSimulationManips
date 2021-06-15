
period=$3
site=$1
chr=$2
ref=$4

list_format=("hds" "rch" "nam" "dis" "nwt" "drn" "oc" "upw" "bas")

for format in "${list_format[@]}";
do
    echo $format
    if [ $ref -eq 0 ]
    then   
        file_name="model_time_0_geo_0_thick_1_K_27.32_Sy_0.1_Step1_site${site}_Chronicle${chr}_Approx0_Period${period}.${format}"
        rsync -avzz --ignore-existing /run/media/jnsll/Seagate\ Expansion\ Drive/exps_modflops/results/Breville-Sur-Mer/model_time_0_geo_0_thick_1_K_27.32_Sy_0.1_Step1_site${site}_Chronicle${chr}_Approx0_Period${period}/${file_name} jbenvegn@igrida-frontend.irisa.fr:/srv/tempdd/jbenvegn/results/Breville-Sur-Mer/model_time_0_geo_0_thick_1_K_27.32_Sy_0.1_Step1_site${site}_Chronicle${chr}_Approx0_Period${period}/${file_name}
    else
        file_name="model_time_0_geo_0_thick_1_K_27.32_Sy_0.1_Step1_site${site}_Chronicle${chr}.${format}"
        rsync -avzz --ignore-existing /run/media/jnsll/Seagate\ Expansion\ Drive/exps_modflops/results/Breville-Sur-Mer/model_time_0_geo_0_thick_1_K_27.32_Sy_0.1_Step1_site${site}_Chronicle${chr}/${file_name} jbenvegn@igrida-frontend.irisa.fr:/srv/tempdd/jbenvegn/results/Breville-Sur-Mer/model_time_0_geo_0_thick_1_K_27.32_Sy_0.1_Step1_site${site}_Chronicle${chr}/${file_name}

    fi
done
