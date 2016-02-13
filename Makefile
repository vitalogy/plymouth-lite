
ply-image: src/ply-image.c src/ply-frame-buffer.c Makefile
	$(CC) $(CFLAGS) `pkg-config --cflags libpng`  src/ply-image.c src/ply-frame-buffer.c -o ply-image  -lm `pkg-config --libs libpng`

clean:
	rm -f ply-image *~ gmon.out

install: ply-image
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/share/plymouth-lite
	mkdir -p $(DESTDIR)/usr/lib/systemd/system/
	cp ply-image $(DESTDIR)/usr/bin
	cp splash/splash.png $(DESTDIR)/usr/share/plymouth-lite/splash.png
	cp systemd/plymouth-lite-fbtft.service $(DESTDIR)/usr/lib/systemd/system/plymouth-lite-fbtft.service
