## This extracts the individual still images from animated gifs

A very scrappy experimental tool for extracting individual .png files from gartic phone books (or any animated gif).

Not intended for public consumption.

## warning - use at your own risk

The scripts contained run the `rm` command on certain computed paths.
It's not impossible it deletes every file on your system, if there's a mistake in this code.

I suggest running it on a virtual machine / gitpod.io / github codespace.

## installing

no install is necessary, assuming you have ffmpeg on your system.  if you don't you'll probably have to research that yourself.

Here's what worked for me on ubuntu systems.

```
sudo apt-get -y update
sudo apt-get install -y ffmpeg
```

## how it works

the bash script `extractAll.sh` just wraps `ffmpeg` which does all the hard work

## How to use

On a system where ffmpeg is installed...

copy your .gif files to `inputGifs/`

run `bash extractAll.sh`

collect your png collections from `outputPngs/`
