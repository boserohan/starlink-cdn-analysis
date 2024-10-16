export OUTPUT_PATH="$(pwd)/results"
export DATA_SET_FOLDER_NAME="dataset"
export DATA_PATH="$(pwd)/$DATA_SET_FOLDER_NAME"
jupyter nbconvert --to=html --output-dir="$OUTPUT_PATH" --execute analysis.ipynb