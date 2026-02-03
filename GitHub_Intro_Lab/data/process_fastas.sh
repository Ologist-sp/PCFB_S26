#!/bin/bash

cat *.fasta > all_sequences.fasta

for f in *.fasta
do
  length=$(grep -v '^>' "$f" | tr -d '\n' | wc -c)
  echo "$f,$length"
done > sequence_lengths.csv
