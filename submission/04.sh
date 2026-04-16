# Create a CLTV script with a timestamp of 1495584032 and public key hash
publicKey=02e3af28965693b9ce1228f9d468149b831d6a0540b25e8a9900f71372c11fb277
locktimeLE="20cd2459"
pubKeyHash="1e51fcdc14be9a148bb0aaec9197eb47c83776fb"

# OP_PUSHDATA(4) <time> OP_CHECKLOCKTIMEVERIFY OP_DROP OP_DUP OP_HASH160 OP_PUSHDATA(20) <hash> OP_EQUALVERIFY OP_CHECKSIG
script="04${locktimeLE}b17576a914${pubKeyHash}88ac"

echo "$script"
