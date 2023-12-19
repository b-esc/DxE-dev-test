#!/bin/bash
cp ~/memories/my_favorite_memory.txt ~/memories/privatemems
chmod 755 ~/memories/privatemems
echo "$(date)" >> ~/memories/privatemems
