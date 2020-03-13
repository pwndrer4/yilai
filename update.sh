#!/bin/bash
rm -rf /Packages
rm -rf /Packages.bz2
python dpkg-scanpackages.py -m ./debs > Packages
bzip2 -fks ./Packages

echo "生成成功！"
