build:
	rm -rf ./public/
	hugo
run:
	#hugo server -p 80 --bind 0.0.0.0
	cd ./public/; python -m http.server 80
test:
	rm -rf ./public/
	hugo
	cd ./public/; python -m http.server 80
server:
	rm -rf ./public/
	hugo
	ps aux | grep "python -m http.server" | grep -v "grep" | grep -v "public" | awk '{print $2}' | xargs kill
	cd ./public/;nohup python -m http.server 80 &