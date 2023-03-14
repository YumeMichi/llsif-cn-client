.class public Lcom/gbase/gameplus/upgradeutil/http/client/entity/GZipDecompressingEntity;
.super Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;
.source "GZipDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-super {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getContentLength()J
    .locals 2

    .line 11
    invoke-super {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setCallBackHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->setCallBackHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V

    return-void
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-super {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/entity/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
