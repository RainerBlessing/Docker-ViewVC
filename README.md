Runs viewvc within apache2

What to do/Configuration:

- The Dockerfile expects the file "subversion_conf.tar" in the current directory and extracts it in the www-data users directory. This archive should contain a subdirectory ".subversion" which contains the saved authentication data to connect to the SVN repositories. You can use the .subversion directory of any user. Connect to the repository and choose to save the password.
- Make a copy of the file viewvc.conf.sample, name it "viewvc.conf". Add the SVN repositories to svn_roots. If they are remote add the URL. The authentication data will be taken from the www-data users subversion directory, provided by you in step one.

To run the container you can use the script start_container.sh. If all went well you can reach ViewVC with http://localhost:9999/viewvc

Todo:

There is no script to start it as a service at boot time.
