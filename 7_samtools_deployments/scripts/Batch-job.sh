{
    "taskGroups": [
        {
            "taskSpec": {
                "runnables": [
                    {
                        "container": {
                            "imageUri":"gcr.io/cloud-lifesciences/samtools",
                            "entrypoint": "/bin/sh",
                            "commands": [
                                "-c",    
                                "samtools index ${BAM} /mnt/disks/share/${BAI}"            
                            ]
                        },
                        "environment": {
                            "variables": {
                                "BAM": "gs://genomics-public-data/NA12878.chr20.sample.bam",
                                "BAI": "NA12878.chr20.sample.bam.bai"                             
                            }
                        }
                    }
                ],
                    "volumes": [
                        {
                            "gcs": {
                                "remotePath": "batch-demo-lynn/samtools-lynn/"
                            },
                            "mountPath": "/mnt/disks/share"
                        }
                    ],
                "computeResource": {
                    "cpuMilli": 2000,
                    "memoryMib": 2000
                },
                "maxRetryCount": 3,
                "maxRunDuration": "100000s"
            },
            "taskCount": 1,
            "parallelism": 10
        }
    ],
    "logsPolicy":{
        "destination": "CLOUD_LOGGING"
    }
}
