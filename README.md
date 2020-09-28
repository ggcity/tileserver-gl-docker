Garden Grove TileServerGL Styles and Configurations
===================================================

Garden Grove specific configs and styles for Klokantech's TileServerGL. Styles are largely based off
of Klokantech Basic and are meant to be used with OpenMapTiles / OpenStreetMap data.


Usage
-----

Depending on the source of your glyphs and sources, you'll have to change the style.json accordingly.

    $ sudo docker stop tileserver && sudo docker rm tileserver

    $ sudo docker run --name=tileserver --restart=unless-stopped -d \
        -v <data_dir>:/data \
        -v <config_dir>:/config \
        -v <styles_dir>:/styles \
        -v <fonts_dir>:/fonts \
        -p 8081:80 
        ggcity/tileserver-gl --config=/config/config.json --verbose --public_url=https://ggcity.org/tileserver

ORRRRR... you can also run all this with the docker compose

    $ sudo docker-compose up --build -d

See more of the usage at klokantech/tileserver-gl.

To change config, you must bring down the container completely via stop/rm then run the above command again.

License
-------

    Copyright (C) 2017  City of Garden Grove
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

