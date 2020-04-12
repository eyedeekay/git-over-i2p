
install:
	mkdir -p $(HOME)/Workspace/mtn/i2p.www/i2p2www/blog/2020/03/16
	cp gitlab-over-i2p.rst $(HOME)/Workspace/mtn/i2p.www/i2p2www/blog/2020/03/16
	#cp *.png $(HOME)/Workspace/mtn/i2p.www/i2p2www/static/images/git/

rst:
	pandoc BUNDLES.md -o bundle-over-snark.rst

release-bundle:
	cat desc | gothub release -p -u eyedeekay -r git-over-i2p -t bundles -n "Pregenerated Bundles" -d -; true
	cat desc | gothub edit -p -u eyedeekay -r git-over-i2p -t bundles -n "Pregenerated Bundles" -d -; true

upload-bundle:
	gothub upload -R -u eyedeekay -r git-over-i2p -t bundles -n "i2p.i2p.bundle.torrent" -f $(HOME)/.i2p/i2psnark/i2p.i2p.bundle.torrent
	gothub upload -R -u eyedeekay -r git-over-i2p -t bundles -n "i2p.i2p.bundle" -f $(HOME)/.i2p/i2psnark/i2p.i2p.bundle