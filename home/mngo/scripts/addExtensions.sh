#!/bin/sh

for f in ./*; do
	type=$(file -bi "$f")
	type=${type%%;*}
	base=${f%}

	final=
	case "$type" in
		application/pdf)              final="$base".pdf ;;
		image/png)                    final="$base".png ;;
		image/tiff)                   final="$base".tiff ;;
		image/jpeg)                   final="$base".jpg ;;
		application/json)             final="$base".json ;;
		image/gif)                    final="$base".gif ;;
		application/gzip)             final="$base".tar.gz ;;
		text/plain)                   final="$base".txt ;;
		application/x-rar-compressed) final="$base".rar ;;
	esac

	if [ "$final" ]; then
		printf '%s --> %s\n' "$f" "$final"
		mv -f "$f" "$final"
	fi
done
