# Directory containing GIF files
TOP_DIR="."  # Replace with your input directory path.
INPUT_DIR="$TOP_DIR/inputGifs"  # Replace with your input directory path

ALL_OUTPUTS_DIR="$TOP_DIR/outputPngs"    
rm -rf "$ALL_OUTPUTS_DIR"
mkdir -p "$ALL_OUTPUTS_DIR"
    
# Loop through all .gif files in the input directory
for gif in "$INPUT_DIR"/*.gif; do
    # Skip if not a file
    [ -f "$gif" ] || continue


    # Extract filename without extension
    filename=$(basename -- "$gif")
    filename="${filename%.*}"
    
    # Create a directory for extracted frames
    OUTPUT_DIR="$ALL_OUTPUTS_DIR/${filename}_frames"
    rm -rf "$OUTPUT_DIR"
    mkdir -p "$OUTPUT_DIR"
    
    # still playing with this. export the image when it changes
    ffmpeg -i "$gif" -vf "mpdecimate,setpts=N/FRAME_RATE/TB" -vsync vfr "$OUTPUT_DIR/${filename}_%03d.png"
    
    #just export all frames
    # ffmpeg -i "$gif" -vsync vfr "$OUTPUT_DIR/${filename}_%03d.png"

    # 
    # ChatGPT suggested this when i asked it to extract every 4th frame, but doesn't work for some books at 10 pages.
    # ffmpeg -i "$gif" -vf "select='not(mod(n,4))',setpts='N/(FRAME_RATE*TB)'" -vsync vfr "$OUTPUT_DIR/${filename}_%03d.png"
    
done

