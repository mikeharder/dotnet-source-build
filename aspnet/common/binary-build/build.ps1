$sourceDir = '../../../../Common'

Copy-Item .dockerignore $sourceDir
Copy-Item Dockerfile $sourceDir

docker build -t aspnet-binary-build:Common -f $sourceDir/Dockerfile $sourceDir

Remove-Item $sourceDir/.dockerignore
Remove-Item $sourceDir/Dockerfile
