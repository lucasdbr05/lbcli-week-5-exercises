# Create a CSV script that would lock funds until one hundred and fifty blocks had passed
publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277
lockSequenceLE="9600"
pubKeyHash="1e51fcdc14be9a148bb0aaec9197eb47c83776fb"

# OP_PUSHDATA(1) <time> OP_CHECKSEQUENCEVERIFY OP_DROP OP_DUP OP_HASH160 OP_PUSHDATA(20) <hash> OP_EQUALVERIFY OP_CHECKSIG
script="02${lockSequenceLE}b27576a914${pubKeyHash}88ac"

echo "$script"