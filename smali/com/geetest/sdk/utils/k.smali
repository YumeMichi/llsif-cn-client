.class public Lcom/geetest/sdk/utils/k;
.super Ljava/lang/Object;
.source "GT3GzipUtil.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    .line 13
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x400

    .line 16
    new-array v1, p1, [B

    :goto_0
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 22
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method

.method public static a([B)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    invoke-static {v0, p0}, Lcom/geetest/sdk/utils/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 10
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1
.end method
