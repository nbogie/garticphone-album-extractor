A very scrappy attempt at extracting individual .png files from gartic phone books (or any animated gif)

## warning - use at your own risk

The scripts contained run the `rm` command on certain computed paths.
It's not impossible it deletes every file on your system.

I suggest running it on a virtual machine / gitpod.io / github codespace.


## How to use

On a system where ffmpeg is installed...

copy your .gif files to `inputGifs/`

run `bash extractAll.sh`

collect your png collections from `outputPngs/`
