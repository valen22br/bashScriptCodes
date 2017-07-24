#!/bin/bash

find -iname "*.doc" -print | zip source -@
