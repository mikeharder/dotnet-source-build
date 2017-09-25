$sourceDir = '../../../../common'

Copy-Item .dockerignore $sourceDir
Copy-Item Dockerfile $sourceDir

docker build --network none -t aspnet-source-build:common -f $sourceDir/Dockerfile $sourceDir

Remove-Item $sourceDir/.dockerignore
Remove-Item $sourceDir/Dockerfile
