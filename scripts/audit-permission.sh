#!/bin/bash
find . -maxdepth 1 -type f | while read -r file; do
  izin=$(stat -c %a "$file")
  if [ "$izin" = "777" ]; then
    echo "PERINGATAN: $file punya izin 777"
  fi
done
