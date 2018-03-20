#!/usr/bin/env bash

# This fixes up any local references at runtime. Do we need this?
pub get --offline --no-precompile

dart bin/server.dart

