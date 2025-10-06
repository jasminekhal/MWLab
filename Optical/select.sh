awk '{print $1}' linelist.txt | sort -n > tmp.txt
> selected_lines.txt
for ((i=4800;i<6800;i+=100)); do
  awk -v low=$i -v high=$((i+100)) '($1>=low && $1<high){print $1}' tmp.txt | shuf -n 1 >> selected_lines.txt
done
