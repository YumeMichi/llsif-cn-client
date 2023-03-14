.class Lcom/tencent/open/a/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/a/g;


# instance fields
.field private a:Lokhttp3/Response;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lokhttp3/Response;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/tencent/open/a/d;->b:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/tencent/open/a/d;->a:Lokhttp3/Response;

    .line 24
    iput p2, p0, Lcom/tencent/open/a/d;->d:I

    .line 25
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    iput p1, p0, Lcom/tencent/open/a/d;->c:I

    .line 26
    iget-object p1, p0, Lcom/tencent/open/a/d;->a:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/tencent/open/a/d;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/tencent/open/a/d;->e:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/tencent/open/a/d;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/a/d;->b:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/tencent/open/a/d;->b:Ljava/lang/String;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/tencent/open/a/d;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/tencent/open/a/d;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/tencent/open/a/d;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/open/a/d;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/open/a/d;->c:I

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/open/a/d;->d:I

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/open/a/d;->e:I

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
