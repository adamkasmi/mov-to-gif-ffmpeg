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
