#!/bin/bash

# Add color for readability
C='\033[1;36m' # Cyan
NC='\033[0m'   # No Color

echo -e "${C}=== CPU Info ===================================================${NC}"
lscpu | grep "Model name"
sensors | grep "Tdie" # Current CPU temp right here

echo -e "${C}=== Motherboard Info ===========================================${NC}"
sudo dmidecode -t baseboard | grep -E "Manufacturer|Product Name"

echo -e "${C}=== RAM Info ====================================================${NC}"
free -h | grep -E "Mem:|Swap:" # Cleaner output
#sudo dmidecode -t memory | grep -E "Speed|Type:" | grep -v "Unknown" | head -n2
#sudo dmidecode -t memory | grep -E "Manufacturer|Part Number|Speed|Voltage"
sudo dmidecode -t memory | awk '
/Memory Device$/,/^$/ {
    if ($0 ~ /Size:/ && $2 != "No") {
        size=$2" "$3
        module++
    }
    if ($0 ~ /Manufacturer:/) manufacturer=$2" "$3" "$4
    if ($0 ~ /Part Number:/) part=$3" "$4" "$5
    if ($0 ~ /Speed:/ && $2 ~ /^[0-9]/) speed=$2" "$3
    if ($0 ~ /Configured Voltage:/) voltage=$3" "$4
    if ($0 ~ /Type:/ && $2 !~ /Error|Unknown/) type=$2
    
    if ($0 ~ /^$/ && size != "") {
        print "Module "module":"
        print "  Manufacturer: "manufacturer
        print "  Part Number:  "part
        print "  Type:         "type
        print "  Speed:        "speed
        print "  Size:         "size
        print "  Voltage:      "voltage
        print ""
        size=""
    }
}'

echo "=== Temperature Sensors ==="
sensors 2>/dev/null | grep -i temp || echo "No temperature sensors found"

echo -e "${C}=== GPU Info ====================================================${NC}"
lspci | grep -E "VGA|3D"

echo -e "${C}=== Temps ======================================================${NC}"
sensors | grep -E "Tdie|edge|temp1" # CPU + GPU temps, less clutter
