node  {
stage ('checkout SCM'){

checkout scm

}
stage ('Docker build'){

sh "sudo su"

sh "cd angular8-helloworld-example-tutorial"

sh "docker build -t akarimikonda/angular ."
}
stage ('Docker push'){
sh "docker tag akarimikonda/angular:latest"

sh "docker push akarimikonda/angular"
}

stage ('docker clean'){

sh "docker container rm -f \$(docker container ls -aq)"
}
stage ('docker deploy'){

sh "docker run -dt -p 4200:4200 angular"
}

}
