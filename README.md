# filehoundd

filehoundd is a Linux daemon written in C that sends desktop notifications whenever a file is accessed, modified, or closed. It utilizes the Linux `inotify` API to monitor filesystem events in real-time.

## Usage

To use filehoundd, follow these steps:

1. Compile the daemon using the provided Makefile:
    ```bash
    make
    ```

2. Run the daemon from the terminal, specifying the path of the file to monitor:
    ```bash
    ./build/filehoundd /path/to/your/file
    ```

    Replace `/path/to/your/file` with the actual path of the file you want to monitor.

3. Once the daemon is running, it will continuously monitor the specified file for filesystem events.

## Requirements

- Linux operating system
- GCC compiler
- libnotify (for desktop notifications)

## Building

To build the filehound daemon, simply run `make` in the project directory. This will compile the source code and generate the executable file `filehoundd` in the `build` directory.

## How It Works

filehoundd utilizes the `inotify` API provided by the Linux kernel to monitor filesystem events. When you run the daemon and specify a file path, it creates an `inotify` instance and adds a watch on the specified file. Whenever an event such as file access, modification, or close occurs, the `inotify` API notifies the daemon, which then sends a desktop notification using libnotify.

## Contributing

Contributions to filehoundd are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request on GitHub.

## License

filehoundd is licensed under the GPLv3 License. See the [LICENSE](./LICENSE) file for details.