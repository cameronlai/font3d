# font3d

font3d is a Django app built to generate 3D Text STL files. 
It utilizes OpenSCAD as the drawing tool.

Currenly, only one basic font type is supported.

## Set up

1. Start Django Project 

  ``` bash
  django-admin startproject font3d_project
  cd font3d_project
  ```

2. Clone the git repository

  ``` bash
  git clone https://github.com/cameronlai/font3d
  ```
  
3. Edit settings.py in your project folder

  ``` bash
  cd ../font3d_PROJECT
  nano settings.py
  ```

  > Add 'font3d' in INSTALLED_APPS
  > Add 'font3d/static/', in STATICFILES_DIR

4. Edit urls.py in your project folder 
  
  ``` bash
  nano urls.py
  ```

  > Add url(r'$^', include('font3d.urls')), to urlpatterns
  

5. Run migrations with manage.py

  ``` bash
  cd ../
  sudo python manage.py migrate
  ```

## Running Django app

1. Run server

  ``` bash
  python manage.py runserver
  ```

2. Launch web browser, enter correct IP address (Default is 127.0.0.1:8080) and your app is running.

## Dependencies

- OpenSCAD

## License

The app is released under the MIT License and more information can be found in the LICENSE file.

## Contributions

font3d is a project to create some interesting font types that uses 3D dimension, breaking through the conventional 2D font types. All code is written in Open SCAD and can be printed out with a 3D printer. 

Contributions for new font types and bug fixes are sincerely welcome!

## Available font types

- Basic - Basic font type drawn in Open SCAD
