FROM alpine:3.14

ENTRYPOINT ["/usr/local/bin/upx"]

RUN wget -O upx-3.96-amd64_linux.tar.xz https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz && \
	tar -xvf upx-3.96-amd64_linux.tar.xz && \
	rm -rf upx-3.96-amd64_linux.tar.xz && \
	mv /upx-3.96-amd64_linux/upx /usr/local/bin/ && \
	chmod +x /usr/local/bin/upx && \
	rm -rf mv /upx-3.96-amd64_linux/


