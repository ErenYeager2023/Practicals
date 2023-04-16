#!/usr/bin/awk -f

BEGIN {
  chars = 0
  words = 0
  lines = 0
}

{
  # count characters
  chars += length($0)

  # count words
  words += NF

  # count lines
  lines++
}

END {
  print "Number of characters:", chars
  print "Number of words:", words
  print "Number of lines:", lines
}
