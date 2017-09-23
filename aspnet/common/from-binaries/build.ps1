$sourceDir = '../../../../common'

Copy-Item .dockerignore $sourceDir
Copy-Item Dockerfile $sourceDir

docker build -t aspnet-from-binaries:common -f $sourceDir/Dockerfile $sourceDir | Tee-Object docker-build.log

Remove-Item $sourceDir/.dockerignore
Remove-Item $sourceDir/Dockerfile
