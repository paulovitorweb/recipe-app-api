#
# Run the services for development
run-tests:
	python app/manage.py test app/ && flake8 --config app/.flake8
