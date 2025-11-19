#!/bin/bash

# Script để test Web Interface + P2P (Cách 2)
# Usage: ./test_web_p2p.sh

echo "============================================================"
echo "🧪 TEST WEB INTERFACE + P2P (Cách 2)"
echo "============================================================"
echo ""

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if Python is available
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo -e "${RED}❌ Python not found!${NC}"
    exit 1
fi

PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null; then
    PYTHON_CMD="python"
fi

echo -e "${YELLOW}📋 Setup Instructions:${NC}"
echo ""
echo "1. Terminal 1 - Start Tracker:"
echo "   $PYTHON_CMD start_chatapp.py --server-ip 0.0.0.0 --server-port 8001"
echo ""
echo "2. Terminal 2 - Start WebPeer Bridge:"
echo "   $PYTHON_CMD start_webpeer.py --server-ip 0.0.0.0 --server-port 8002"
echo ""
echo "3. Terminal 3 (Optional) - Start Proxy:"
echo "   $PYTHON_CMD start_proxy.py --server-ip 0.0.0.0 --server-port 8080"
echo ""
echo "4. Open Browser:"
echo "   http://localhost:8001/chat.html"
echo "   (or http://localhost:8080/chat.html if using proxy)"
echo ""
echo -e "${GREEN}✅ Ready to test!${NC}"
echo ""
echo "Test Flow:"
echo "1. Login với username=alice, password=password"
echo "2. Tracker IP: 127.0.0.1, Port: 8001"
echo "3. P2P Port: 9101"
echo "4. WebPeer IP: 127.0.0.1, Port: 8002"
echo "5. Join channel 'general'"
echo "6. Test messaging!"
echo ""
echo -e "${YELLOW}📖 Xem chi tiết trong file: TEST_WEB_P2P.md${NC}"
echo ""

