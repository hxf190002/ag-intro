download_data: genome.gtf sars_genome.gtf sars.paired_end.sorted.bam test.paired_end.sorted.bam 

sars_genome.gtf:
	wget -O sars_genome.gtf https://github.com/nf-core/test-datasets/raw/modules/data/genomics/sarscov2/genome/genome.gtf
 
sars.paired_end.sorted.bam:
	wget -O $@ https://github.com/nf-core/test-datasets/raw/modules/data/genomics/sarscov2/illumina/bam/test.paired_end.sorted.bam

#testdatadownload
genome.gtf:
    wget https://github.com/nf-core/test-datasets/raw/modules/data/genomics/homo_sapiens/genome/genome.gtf
 
test.paired_end.sorted.bam:
    wget https://github.com/nf-core/test-datasets/raw/modules/data/genomics/sarscov2/genome/bam/test.paired_end.sorted.bam
https://github.com/nf-core/test-datasets/raw/modules/data/genomics/sarscov2/illumina/bam/test.paired_end.sorted.bam
conda_env:
	conda env create --name=more-map-and-call --file=env.yaml

clean:
	rm genome.gtf test.paired_end.sorted.bam
