# django-init

Fresh project layout for django 1.8 projects based on the best practices.

To create a new django project with this layout use the `--template` flag.

```bash

$ django-admin startproject --template=https://github.com/juliocesar-io/django-init/zipball/master --extension=py,gitignore your_project_name

```

Install requirements and run database migrations

```bash
$ pip install -r requirements.txt

$ python manage.py migrate

```
