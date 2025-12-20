#!/bin/bash
C='\033[1;36m' # Cyan
NC='\033[0m'   # No Color

echo -e "${C}=== CPU Info ===================================================${NC}"
lscpu | grep "Model name"
sensors | grep "Tdie"

echo -e "${C}=== Motherboard Info ===========================================${NC}"
sudo dmidecode -t baseboard | grep -E "Manufacturer|Product Name"

echo -e "${C}=== RAM Info ====================================================${NC}"
free -h | grep -E "Mem:|Swap:"
sudo dmidecode -t memory | grep -E "Speed|Type:" | grep -v "Unknown" | head -n2

echo -e "${C}=== GPU Info ====================================================${NC}"
lspci | grep -E "VGA|3D"

echo -e "${C}=== Temps ======================================================${NC}"
sensors | grep -E "Tdie|edge|temp1"
