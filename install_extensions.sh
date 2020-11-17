cd extensions
git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/PageSchemas.git 
wget http://www.aifb.kit.edu/images/f/f3/SemanticMediaWikiGraph_v.1.0.1.zip
unzip SemanticMediaWikiGraph_v.1.0.1.zip
git clone https://github.com/wikimedia/mediawiki-extensions-PageForms
mv mediawiki-extensions-PageForms PageForms
rm SemanticMediaWikiGraph_v.1.0.1.zip
cd ..