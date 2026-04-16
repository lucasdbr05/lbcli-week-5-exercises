# Create a time-based CSV script that would lock funds for 6 months (using 30-day months)
# Time-based CSV uses 512-second units with the type flag (bit 22) set
publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277
# 30 * 6 * (24 * 60 * 60) / 512 = 30375
# hex(30375) = 0x76a7 
# lockSeququence = 0x400000 + 0x0076a7
lockSequenceLE="a77640"
pubKeyHash="1e51fcdc14be9a148bb0aaec9197eb47c83776fb"

csvScript="03${lockSequenceLE}b27576a914${pubKeyHash}88ac"

echo "$csvScript"