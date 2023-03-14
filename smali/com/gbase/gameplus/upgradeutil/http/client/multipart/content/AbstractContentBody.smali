.class public abstract Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;
.super Ljava/lang/Object;
.source "AbstractContentBody.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;


# instance fields
.field protected callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

.field private final mediaType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    if-eqz p1, :cond_1

    .line 19
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    const/16 v0, 0x2f

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->subType:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->subType:Ljava/lang/String;

    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MIME type may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public setCallBackInfo(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/AbstractContentBody;->callBackInfo:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    return-void
.end method
