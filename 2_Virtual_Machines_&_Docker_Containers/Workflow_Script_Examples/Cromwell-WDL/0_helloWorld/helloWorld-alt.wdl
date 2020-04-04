version 1.0

workflow test {
  call hello
}

task hello {
  input {
    String name
  }

  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }
  runtime {
   docker: 'ubuntu:latest'
  }
}

