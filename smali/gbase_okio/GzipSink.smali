.class public final Lgbase_okio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lgbase_okio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lgbase_okio/DeflaterSink;

.field private final sink:Lgbase_okio/BufferedSink;


# direct methods
.method public constructor <init>(Lgbase_okio/Sink;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lgbase_okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    .line 21
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lgbase_okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 22
    invoke-static {p1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lgbase_okio/GzipSink;->sink:Lgbase_okio/BufferedSink;

    .line 23
    new-instance p1, Lgbase_okio/DeflaterSink;

    iget-object v0, p0, Lgbase_okio/GzipSink;->sink:Lgbase_okio/BufferedSink;

    iget-object v1, p0, Lgbase_okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {p1, v0, v1}, Lgbase_okio/DeflaterSink;-><init>(Lgbase_okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lgbase_okio/GzipSink;->deflaterSink:Lgbase_okio/DeflaterSink;

    .line 25
    invoke-direct {p0}, Lgbase_okio/GzipSink;->writeHeader()V

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateCrc(Lgbase_okio/Buffer;J)V
    .locals 4

    .line 114
    iget-object p1, p1, Lgbase_okio/Buffer;->head:Lgbase_okio/Segment;

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 116
    iget v0, p1, Lgbase_okio/Segment;->limit:I

    iget v1, p1, Lgbase_okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 117
    iget-object v0, p0, Lgbase_okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lgbase_okio/Segment;->data:[B

    iget v3, p1, Lgbase_okio/Segment;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 114
    iget-object p1, p1, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeFooter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lgbase_okio/GzipSink;->sink:Lgbase_okio/BufferedSink;

    iget-object v1, p0, Lgbase_okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lgbase_okio/BufferedSink;->writeIntLe(I)Lgbase_okio/BufferedSink;

    .line 109
    iget-object v0, p0, Lgbase_okio/GzipSink;->sink:Lgbase_okio/BufferedSink;

    iget-object v1, p0, Lgbase_okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-interface {v0, v1}, Lgbase_okio/BufferedSink;->writeIntLe(I)Lgbase_okio/BufferedSink;

    return-void
.end method

.method private writeHeader()V
    .locals 2

    .line 96
    iget-object v0, p0, Lgbase_okio/GzipSink;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v0}, Lgbase_okio/BufferedSink;->buffer()Lgbase_okio/Buffer;

    move-result-object v0

    const/16 v1, 0x1f8b

    .line 97
    invoke-virtual {v0, v1}, Lgbase_okio/Buffer;->writeShort(I)Lgbase_okio/Buffer;

    const/16 v1, 0x8

    .line 98
    invoke-virtual {v0, v1}, Lgbase_okio/Buffer;->writeByte(I)Lgbase_okio/Buffer;

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lgbase_okio/Buffer;->writeByte(I)Lgbase_okio/Buffer;

    .line 100
    invoke-virtual {v0, v1}, Lgbase_okio/Buffer;->writeInt(I)Lgbase_okio/Buffer;

    .line 101
    invoke-virtual {v0, v1}, Lgbase_okio/Buffer;->writeByte(I)Lgbase_okio/Buffer;

    .line 102
    invoke-virtual {v0, v1}, Lgbase_okio/Buffer;->writeByte(I)Lgbase_okio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lgbase_okio/GzipSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 61
    :try_start_0
    iget-object v1, p0, Lgbase_okio/GzipSink;->deflaterSink:Lgbase_okio/DeflaterSink;

    invoke-virtual {v1}, Lgbase_okio/DeflaterSink;->finishDeflate()V

    .line 62
    invoke-direct {p0}, Lgbase_okio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    :goto_0
    :try_start_1
    iget-object v1, p0, Lgbase_okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 80
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lgbase_okio/GzipSink;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v1}, Lgbase_okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lgbase_okio/GzipSink;->closed:Z

    if-eqz v0, :cond_3

    .line 90
    invoke-static {v0}, Lgbase_okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lgbase_okio/GzipSink;->deflaterSink:Lgbase_okio/DeflaterSink;

    invoke-virtual {v0}, Lgbase_okio/DeflaterSink;->flush()V

    return-void
.end method

.method public timeout()Lgbase_okio/Timeout;
    .locals 1

    .line 49
    iget-object v0, p0, Lgbase_okio/GzipSink;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v0}, Lgbase_okio/BufferedSink;->timeout()Lgbase_okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lgbase_okio/Buffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgbase_okio/GzipSink;->updateCrc(Lgbase_okio/Buffer;J)V

    .line 38
    iget-object v0, p0, Lgbase_okio/GzipSink;->deflaterSink:Lgbase_okio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lgbase_okio/DeflaterSink;->write(Lgbase_okio/Buffer;J)V

    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
