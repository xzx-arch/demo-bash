#!/bin/bash

vardai=(ona jonas rasa)

kiekis=0


for x in "${vardai[@]}"; do
	echo "Sveiki $x"
	kiekis=$((kiekis + 1))
done
echo "Pasveikinom $kiekis";
