.class public Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final body:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

.field private final header:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 27
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->body:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    .line 29
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

    invoke-direct {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->header:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

    .line 31
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->generateContentType(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 44
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->body:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    .line 46
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

    invoke-direct {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->header:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

    if-eqz p3, :cond_0

    const-string p1, "Content-Disposition"

    .line 49
    invoke-virtual {p0, p1, p3}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    .line 53
    :goto_0
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->generateContentType(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V

    return-void

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->header:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;

    invoke-direct {v1, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;->addField(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalField;)V

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateContentDisposition(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "; filename=\""

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-interface {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateContentType(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-interface {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-interface {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateTransferEncoding(Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;)V
    .locals 1

    .line 100
    invoke-interface {p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->body:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->header:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MinimalFieldHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
