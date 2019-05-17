sudo apt install unzip
unzip simssadb_deployment_files.zip
cp -r media/ django/simssadb/
cp -r feature_extraction/ django/simssadb/
cp -r sample_data/ django/simssadb/
rm -rf media/
rm -rf feature_extraction/
rm -rf sample_data/
