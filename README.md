# LazyGH

*LazyGH* is text user interface (tui) that attempts to reduce the number of
steps it takes to manage github repositories at the command line.

It inspired by the wonderful `lazygit`
[https://github.com/jesseduffield/lazygit]; a very powerful tui that
streamlines git usage. 

*LazyGH* is a shell script wrapper utility that attempts to take some of the pain out of the gh
cli tool.

## Prerequisites

To use lazygit, you must install the following software:

- jq: a powerful json parser that most developers probably have installed already
- gh: the github cli tool

## Installation

Run `sudo make install`

The, you should have `lazygh` utility availabale in all new terminals.

## usage

In any checked out github repo run `lazygit`. Then create an issue or select and interact with an issue!

