#!/bin/bash

# Check if FFmpeg is installed
if ! command -v ffmpeg &> /dev/null
then
    echo "FFmpeg could not be found, please install it to proceed."
    exit
fi

# Check for input arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input.mov output.gif"
    exit
fi

# Input and Output files
INPUT=$1
OUTPUT=$2

# Generate palette for better quality
ffmpeg -i $INPUT -vf "fps=15,scale=480:-1:flags=lanczos,setpts=1.43*PTS,palettegen" -y palette.png

# Convert the video to GIF using the palette
ffmpeg -i $INPUT -i palette.png -filter_complex "fps=15,scale=480:-1:flags=lanczos,setpts=1.43*PTS [x]; [x][1:v] paletteuse" -y $OUTPUT

# Remove the generated palette
rm palette.png

echo "Conversion completed: $OUTPUT has been generated."
