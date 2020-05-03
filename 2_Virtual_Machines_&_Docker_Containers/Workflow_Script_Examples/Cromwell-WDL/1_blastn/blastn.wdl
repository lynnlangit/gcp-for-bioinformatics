version 1.0

workflow blastnWorkflow {
   input {
      String path
   }
   
   call blastn {
      input: path=path
   }
}

task blastn {

   input{
      String path
   }
   command {
      bash blast.sh ${path}
   }

   output {
      File blastn_report = "out.txt"
   }

   runtime {
      docker: "lynnlangit/blastn:latest"
   }
}



