#
# Run tests in local environment
tests:
	python app/manage.py test app/ && flake8 --config app/.flake8

#
# Run tests in container
tests-into-container:
	docker-compose run --rm app sh -c "python manage.py test && flake8"
