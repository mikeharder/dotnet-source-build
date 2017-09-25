$sourceDir = '../../../../buildtools'

Copy-Item .dockerignore $sourceDir
Copy-Item Dockerfile $sourceDir

docker build -t aspnet-binary-build:buildtools -f $sourceDir/Dockerfile $sourceDir

Remove-Item $sourceDir/.dockerignore
Remove-Item $sourceDir/Dockerfile
