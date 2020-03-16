workflow HelloWorld {
  call WriteGreeting
}

task WriteGreeting {
  command {
     echo "Hello World"
  }
  output {
     File output_greeting = stdout()
  }
  runtime {
      docker: "lynnlangit/blastn:latest"
   }
}

