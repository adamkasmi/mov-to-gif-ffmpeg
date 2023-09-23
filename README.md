# FFmpeg Video to GIF Converter

This script uses FFmpeg to convert a video file to a GIF while maintaining quality and adjusting speed.

## Prerequisites

- Ensure that FFmpeg is installed on your system. If not, you can download it from the [official FFmpeg site](https://ffmpeg.org/download.html) or install it using a package manager:

  ```sh
  # For Ubuntu
  sudo apt-get update
  sudo apt-get install ffmpeg

  # For macOS
  brew install ffmpeg
  ```

## Usage

```sh
bash convert.sh input.mov output.gif


## Explanation of FFmpeg Flags
-i: Input file URL.
-vf: Video filter graph description.
fps: Frames per second.
scale: Scale the input video to the specified width and height.
setpts: Set PTS (Presentation Timestamp) for the frames to adjust video speed.
palettegen: Generate a palette for a video stream.
-y: Overwrite output files without asking.
-filter_complex: Define a complex filtergraph, used for using the generated palette in the conversion.
## Adjusting Speed
The setpts filter is used to adjust the speed of the video. The value setpts=1.43*PTS will slow down the video to 70% of its original speed. Adjust the multiplier as needed:

setpts=0.5*PTS: Speed up the video to 200% of the original speed.
setpts=2.0*PTS: Slow down the video to 50% of the original speed.
