# Notis
### Mac OSX Command Line Notifier

Notis is a Mac OSX utility that allows you to display a standard OSX toast message notification at the completion of another command with the option to emit an audio signal.

## Installation

Install the Ruby gem with the following command:

``` bash
gem install notis
```

## Usage
You can run the command that is to be tracked as an argument to Notis or you can pipe the standard output from the command to Notis.  The way that you run it influences the level of detail that you receive in the notification text.

### Run Command as an Argument to Notis
Use the command to be tracked as an argument to Notis and enclose it in quotes if it includes spaces or special shell characters.  For example, if you are running the command `longrunner bigfile.baf`:

```
notis "longrunner bigfile.baf"
```
When you run notis with this syntax, you will receive a notification that identifies the completed command with up to 20 characters of the original command string.

### Pipe Standard Output from Command to Notis
You can also use Notis by piping the standard output stream of another command to the Notis standard input stream.  Assuming that you are running the command `longrunner bigfile.baf`:

```
longrunner bigfile.baf | notis
```

## Options

This utility provides the option to mute the standard output from the original command and to emit an audio signal that the command completed along with the notification toast message.

### Mute Standard Output from the Tracked Command (`-m, --mute`)

```
notis -m "longrunner bigfile.baf"
```

### Emit Audio Signal as Part of the Notification (`-b, --bell`)

```
notis -b "longrunner bigfile.baf"
```


