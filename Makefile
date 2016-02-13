
ply-image: src/ply-image.c src/ply-frame-buffer.c Makefile
	$(CC) $(CFLAGS) `pkg-config --cflags libpng`  src/ply-image.c src/ply-frame-buffer.c -o ply-image  -lm `pkg-config --libs libpng`

clean:
	rm -f ply-image *~ gmon.out

install: ply-image
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/share/plymouth-lite
	cp ply-image $(DESTDIR)/usr/bin
	cp splash/splash.png $(DESTDIR)/usr/share/plymouth-lite/splash.png
	cp splash/arch-splash.png $(DESTDIR)/usr/share/plymouth-lite/arch-splash.png
