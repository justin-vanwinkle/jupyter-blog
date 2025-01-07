new-book:
	poetry run jupyter-book create content

publish:
	poetry run jupyter-book build content
	git add -A
	git commit -m 'publish'
	git push
	poetry run ghp-import -n -p -f content/_build/html
