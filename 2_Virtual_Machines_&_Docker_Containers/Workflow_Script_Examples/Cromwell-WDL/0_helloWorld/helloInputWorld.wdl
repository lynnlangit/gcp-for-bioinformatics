version 1.0

workflow HelloInput {
  call Hello
}

task Hello {
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

