# debenstack-techblog

Dockerising of techblog stack


# Setup
1. Clone repository
2. Copy the `config.example.js` file within the repository. Rename to `config.js` and update with appropriate configs
3. Load for local development with `docker-compose up`

Note: that the `config.example.js` specifies what port and ip to listen on for the ghost blog stack. For docker the host must be `0.0.0.0`. For the port, make sure this maps correctly with docker and `docker-compose.yaml`

# Project Structure
| Folder | Description |
| ------ | ----------- |
| content | Contains assets and themes for the blog. See READMEs within these folders for more details |
| core | Core ghost functionality code |
| docs | Archive of README and other assorted data for the project |


# Debug Mode
To run the project in debug mode, giving more output etc. Edit the `startup.sh` script and remove the `--production` flag from the npm install command