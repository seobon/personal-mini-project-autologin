#!/bin/bash
#: Title         : Test bash script
#: Date          : 2024-05-09
#: Author        : "seobon Kim"(seobon1201@naver.com)
#: Desciption    : Practice shell script
echo "Hello, World!"
echo "Today is $(date +%Y-%m-%d)"
touch report-$(date +%Y%m%d_%H%M)_v1
touch report-`date +%Y%m%d_%H%M`_v2
ls