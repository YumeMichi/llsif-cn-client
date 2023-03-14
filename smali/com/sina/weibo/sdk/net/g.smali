.class public final Lcom/sina/weibo/sdk/net/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/net/f;


# instance fields
.field private code:I

.field private p:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sina/weibo/sdk/net/g;->code:I

    .line 15
    iput-object p2, p0, Lcom/sina/weibo/sdk/net/g;->p:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 4

    .line 22
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 23
    new-array v1, v1, [B

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/net/g;->p:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 31
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
