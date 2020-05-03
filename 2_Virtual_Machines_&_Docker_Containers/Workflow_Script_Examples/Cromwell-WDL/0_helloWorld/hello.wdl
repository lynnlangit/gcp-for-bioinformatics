version 1.0

workflow HelloWorld {
  call WriteGreeting
}

task WriteGreeting {
  command {
     echo "Hello"
  }
  output {
     # Write output to standard out
     File output_greeting = stdout()
  }
}

