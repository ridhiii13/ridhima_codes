if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ ! -e "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
characters=$(wc -m < "$filename")

echo "File: $filename"
echo "Number of Lines: $lines"
echo "Number of Words: $words"
echo "Number of Characters: $characters"
