.class public final Lgbase_okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lgbase_okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgbase_okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lgbase_okio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 188
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lgbase_okio/Okio;->sink(Ljava/io/OutputStream;)Lgbase_okio/Sink;

    move-result-object p0

    return-object p0

    .line 187
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blackhole()Lgbase_okio/Sink;
    .locals 1

    .line 200
    new-instance v0, Lgbase_okio/Okio$3;

    invoke-direct {v0}, Lgbase_okio/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;
    .locals 1

    .line 61
    new-instance v0, Lgbase_okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lgbase_okio/RealBufferedSink;-><init>(Lgbase_okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;
    .locals 1

    .line 52
    new-instance v0, Lgbase_okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lgbase_okio/RealBufferedSource;-><init>(Lgbase_okio/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 262
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sink(Ljava/io/File;)Lgbase_okio/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 182
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lgbase_okio/Okio;->sink(Ljava/io/OutputStream;)Lgbase_okio/Sink;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/io/OutputStream;)Lgbase_okio/Sink;
    .locals 1

    .line 66
    new-instance v0, Lgbase_okio/Timeout;

    invoke-direct {v0}, Lgbase_okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lgbase_okio/Okio;->sink(Ljava/io/OutputStream;Lgbase_okio/Timeout;)Lgbase_okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method private static sink(Ljava/io/OutputStream;Lgbase_okio/Timeout;)Lgbase_okio/Sink;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lgbase_okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lgbase_okio/Okio$1;-><init>(Lgbase_okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/net/Socket;)Lgbase_okio/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 118
    invoke-static {p0}, Lgbase_okio/Okio;->timeout(Ljava/net/Socket;)Lgbase_okio/AsyncTimeout;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lgbase_okio/Okio;->sink(Ljava/io/OutputStream;Lgbase_okio/Timeout;)Lgbase_okio/Sink;

    move-result-object p0

    .line 120
    invoke-virtual {v0, p0}, Lgbase_okio/AsyncTimeout;->sink(Lgbase_okio/Sink;)Lgbase_okio/Sink;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lgbase_okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 195
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0}, Lgbase_okio/Okio;->sink(Ljava/io/OutputStream;)Lgbase_okio/Sink;

    move-result-object p0

    return-object p0

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/File;)Lgbase_okio/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 169
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lgbase_okio/Okio;->source(Ljava/io/InputStream;)Lgbase_okio/Source;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/InputStream;)Lgbase_okio/Source;
    .locals 1

    .line 125
    new-instance v0, Lgbase_okio/Timeout;

    invoke-direct {v0}, Lgbase_okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lgbase_okio/Okio;->source(Ljava/io/InputStream;Lgbase_okio/Timeout;)Lgbase_okio/Source;

    move-result-object p0

    return-object p0
.end method

.method private static source(Ljava/io/InputStream;Lgbase_okio/Timeout;)Lgbase_okio/Source;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Lgbase_okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lgbase_okio/Okio$2;-><init>(Lgbase_okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/net/Socket;)Lgbase_okio/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 224
    invoke-static {p0}, Lgbase_okio/Okio;->timeout(Ljava/net/Socket;)Lgbase_okio/AsyncTimeout;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lgbase_okio/Okio;->source(Ljava/io/InputStream;Lgbase_okio/Timeout;)Lgbase_okio/Source;

    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Lgbase_okio/AsyncTimeout;->source(Lgbase_okio/Source;)Lgbase_okio/Source;

    move-result-object p0

    return-object p0

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lgbase_okio/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 176
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lgbase_okio/Okio;->source(Ljava/io/InputStream;)Lgbase_okio/Source;

    move-result-object p0

    return-object p0

    .line 175
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static timeout(Ljava/net/Socket;)Lgbase_okio/AsyncTimeout;
    .locals 1

    .line 230
    new-instance v0, Lgbase_okio/Okio$4;

    invoke-direct {v0, p0}, Lgbase_okio/Okio$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
