for f in .*; do
	if [ "$f" != . -a "$f" != .. ]; then
		mv "$f" "${f:1}"
	fi
done

