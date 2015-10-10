#! /bin/sh

repos=("conx-logistics-platform" "conx-dependencies" "conx-works-core" "conx-works-datasource" "conx-works-masterdata" "conx-works-metadata" "conx-works-notification" "conx-works-paas-idm" "conx-works-paas-db" "conx-libraries" "conx-dev-vms")

for i in ${repos[@]}; do
  git clone git@bitbucket.org:bcvadmin/${i}.git
done

for j in ${repos[@]}; do
  cd ${j}
  git checkout dev
  cd ..
done

cd conx-logistics-platform
echo "\n\nIMPORTANT: Select the 'dev' branch as the next release branch and the 'master' branch as the production branch\n\n"
git flow init
cd com.conx.logistics.frontend.webui
npm i -g gulp bower
npm i
bower install
mkdir dist
cd ..
cd ..

