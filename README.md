# Unexpected Return Value from Lua Function

This repository demonstrates a subtle bug in a Lua function related to handling missing arguments. The function `foo` is designed to return `nil` if called without an argument, but instead returns `1` due to how Lua handles the absence of arguments.

## Bug Description

The `foo` function attempts to check for `nil` argument. However when called without arguments, it does not correctly treat this as `nil` and returns `1` instead.  This is unexpected behavior and can lead to hard to debug errors in larger projects. 

## How to Reproduce

1. Clone this repository.
2. Run `bug.lua`.
3. Observe the unexpected output.