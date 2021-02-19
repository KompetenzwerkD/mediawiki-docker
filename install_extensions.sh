cd extensions
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/PageSchemas.git 
git clone https://github.com/wikimedia/mediawiki-extensions-PageForms
mv mediawiki-extensions-PageForms PageForms
wget http://www.aifb.kit.edu/images/f/f3/SemanticMediaWikiGraph_v.1.0.1.zip
unzip SemanticMediaWikiGraph_v.1.0.1.zip
rm SemanticMediaWikiGraph_v.1.0.1.zip
wget https://extdist.wmflabs.org/dist/extensions/TitleIcon-REL1_35-2e9ce16.tar.gz
tar -xzf TitleIcon-REL1_35-2e9ce16.tar.gz -C .
rm  TitleIcon-REL1_35-2e9ce16.tar.gz
cd ..