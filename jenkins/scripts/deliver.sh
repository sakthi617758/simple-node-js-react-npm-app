#!/usr/bin/env sh

echo 'The following "npm" command builds your Node.js/React application for'
echo 'production in the local "build" directory (i.e. within the'
echo '"/var/jenkins_home/workspace/simple-node-js-react-app" directory),'
echo 'correctly bundles React in production mode and optimizes the build for'
echo 'the best performance.'
set -x
npm run build
echo 'copy the latest build file from jenkins workspace to web root directory of your installed web server'
cp -r /var/lib/jenkins/workspace/SampleReactApplication/build /var/www/html/
set +x

echo 'created your initial Pipeline as a Jenkinsfile.)'
