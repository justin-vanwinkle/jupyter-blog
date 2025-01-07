new-book:
	poetry run jupyter-book create newBook

publish:
	poetry run jupyter-book build myfirstbook
	git add -A
	git commit -m 'publish'
	git push
	poetry run gphp-import -n -p -f myfirstbook/_build/html
