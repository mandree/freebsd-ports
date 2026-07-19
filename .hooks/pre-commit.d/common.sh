error() {
	echo -e "$*" > /dev/stderr
}

pre_commit_error() {
	error "[pre-commit] ERROR: $*"
}

escape_modern_regex() {
	# escape all special characters on stdin per re_format (modern regex)
	sed -E 's/([].*+?()|^$\[])/\\\1/g'
}
