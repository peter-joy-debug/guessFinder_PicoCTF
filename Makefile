.PHONY: main
main: flag


FLAG_PHRASE := "picoCTF{outguess_img_decryptor_"
FLAG := $(shell echo $(FLAG) | sed "s/flag{/$(FLAG_PHRASE)/1")


artifacts.tar.gz: decryptImg.jpg
	tar czvf $@ $^

flag:
	$(shell touch flag)
	@echo "$(FLAG)" > flag
	$(shell python3 challenge_script.py flag guessImg.jpg decryptImg.jpg Y21DcvP)

metadata.json:
	@echo "Creating the metadata file..."
	@echo "{\"flag\":\"$(FLAG)\"}" > metadata.json

clean:
	rm -f flag
	rm -f decryptImg.jpg
