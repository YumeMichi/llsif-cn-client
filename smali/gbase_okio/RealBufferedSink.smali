.class final Lgbase_okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lgbase_okio/BufferedSink;


# instance fields
.field public final buffer:Lgbase_okio/Buffer;

.field closed:Z

.field public final sink:Lgbase_okio/Sink;


# direct methods
.method constructor <init>(Lgbase_okio/Sink;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    iput-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Lgbase_okio/Buffer;
    .locals 1

    .line 34
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    iget-wide v1, v1, Lgbase_okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 229
    iget-object v1, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    iget-object v2, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    iget-object v3, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    iget-wide v3, v3, Lgbase_okio/Buffer;->size:J

    invoke-interface {v1, v2, v3, v4}, Lgbase_okio/Sink;->write(Lgbase_okio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    invoke-interface {v1}, Lgbase_okio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 240
    iput-boolean v1, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_3

    .line 242
    invoke-static {v0}, Lgbase_okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public emit()Lgbase_okio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0}, Lgbase_okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 178
    iget-object v2, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    iget-object v3, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lgbase_okio/Sink;->write(Lgbase_okio/Buffer;J)V

    :cond_0
    return-object p0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitCompleteSegments()Lgbase_okio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0}, Lgbase_okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 171
    iget-object v2, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    iget-object v3, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lgbase_okio/Sink;->write(Lgbase_okio/Buffer;J)V

    :cond_0
    return-object p0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    iget-wide v0, v0, Lgbase_okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 216
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    iget-object v1, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    iget-wide v2, v1, Lgbase_okio/Buffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lgbase_okio/Sink;->write(Lgbase_okio/Buffer;J)V

    .line 218
    :cond_0
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    invoke-interface {v0}, Lgbase_okio/Sink;->flush()V

    return-void

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 183
    new-instance v0, Lgbase_okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lgbase_okio/RealBufferedSink$1;-><init>(Lgbase_okio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Lgbase_okio/Timeout;
    .locals 1

    .line 246
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    invoke-interface {v0}, Lgbase_okio/Sink;->timeout()Lgbase_okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okio/RealBufferedSink;->sink:Lgbase_okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lgbase_okio/ByteString;)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->write(Lgbase_okio/ByteString;)Lgbase_okio/Buffer;

    .line 47
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lgbase_okio/Source;J)Lgbase_okio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 106
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lgbase_okio/Source;->read(Lgbase_okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr p2, v0

    .line 109
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public write([B)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->write([B)Lgbase_okio/Buffer;

    .line 85
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lgbase_okio/Buffer;->write([BII)Lgbase_okio/Buffer;

    .line 91
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lgbase_okio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lgbase_okio/Buffer;->write(Lgbase_okio/Buffer;J)V

    .line 41
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lgbase_okio/Source;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lgbase_okio/Source;->read(Lgbase_okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    .line 99
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    goto :goto_0

    :cond_0
    return-wide v0

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeByte(I)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeByte(I)Lgbase_okio/Buffer;

    .line 117
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDecimalLong(J)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lgbase_okio/Buffer;->writeDecimalLong(J)Lgbase_okio/Buffer;

    .line 159
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lgbase_okio/Buffer;->writeHexadecimalUnsignedLong(J)Lgbase_okio/Buffer;

    .line 165
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeInt(I)Lgbase_okio/Buffer;

    .line 135
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeIntLe(I)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeIntLe(I)Lgbase_okio/Buffer;

    .line 141
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lgbase_okio/Buffer;->writeLong(J)Lgbase_okio/Buffer;

    .line 147
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLongLe(J)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lgbase_okio/Buffer;->writeLongLe(J)Lgbase_okio/Buffer;

    .line 153
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeShort(I)Lgbase_okio/Buffer;

    .line 123
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShortLe(I)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeShortLe(I)Lgbase_okio/Buffer;

    .line 129
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgbase_okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lgbase_okio/Buffer;

    .line 79
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lgbase_okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lgbase_okio/Buffer;

    .line 72
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeUtf8(Ljava/lang/String;)Lgbase_okio/Buffer;

    .line 53
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lgbase_okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lgbase_okio/Buffer;

    .line 60
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8CodePoint(I)Lgbase_okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lgbase_okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lgbase_okio/RealBufferedSink;->buffer:Lgbase_okio/Buffer;

    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeUtf8CodePoint(I)Lgbase_okio/Buffer;

    .line 66
    invoke-virtual {p0}, Lgbase_okio/RealBufferedSink;->emitCompleteSegments()Lgbase_okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
