.class final Lgbase_okio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lgbase_okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okio/Okio;->source(Ljava/io/InputStream;Lgbase_okio/Timeout;)Lgbase_okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lgbase_okio/Timeout;


# direct methods
.method constructor <init>(Lgbase_okio/Timeout;Ljava/io/InputStream;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lgbase_okio/Okio$2;->val$timeout:Lgbase_okio/Timeout;

    iput-object p2, p0, Lgbase_okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lgbase_okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read(Lgbase_okio/Buffer;J)J
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbase_okio/Okio$2;->val$timeout:Lgbase_okio/Timeout;

    invoke-virtual {v0}, Lgbase_okio/Timeout;->throwIfReached()V

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p1, v0}, Lgbase_okio/Buffer;->writableSegment(I)Lgbase_okio/Segment;

    move-result-object v0

    .line 140
    iget v1, v0, Lgbase_okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 141
    iget-object p2, p0, Lgbase_okio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v1, v0, Lgbase_okio/Segment;->data:[B

    iget v2, v0, Lgbase_okio/Segment;->limit:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    .line 143
    :cond_1
    iget p3, v0, Lgbase_okio/Segment;->limit:I

    add-int/2addr p3, p2

    iput p3, v0, Lgbase_okio/Segment;->limit:I

    .line 144
    iget-wide v0, p1, Lgbase_okio/Buffer;->size:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lgbase_okio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Lgbase_okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 148
    :cond_2
    throw p1

    .line 135
    :cond_3
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

.method public timeout()Lgbase_okio/Timeout;
    .locals 1

    .line 157
    iget-object v0, p0, Lgbase_okio/Okio$2;->val$timeout:Lgbase_okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
