.class public final Lcom/sina/weibo/sdk/a/d;
.super Lcom/sina/weibo/sdk/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/weibo/sdk/a/c<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private Z:Landroid/content/Context;

.field private aa:Lcom/sina/weibo/sdk/net/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/weibo/sdk/net/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Ljava/lang/Throwable;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/net/c<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/sina/weibo/sdk/a/c;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/d;->Z:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sina/weibo/sdk/a/d;->ac:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/sina/weibo/sdk/a/d;->ad:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/sina/weibo/sdk/a/d;->ae:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sina/weibo/sdk/a/d;->aa:Lcom/sina/weibo/sdk/net/c;

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/d;->Z:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/a/d;->ae:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/d;->ad:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3, v1, v2, p1}, Lcom/sina/weibo/sdk/net/HttpManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs n()Ljava/lang/String;
    .locals 6

    const-string v0, "oauth_sign"

    const-string v1, "oauth_timestamp"

    .line 1074
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1075
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/sina/weibo/sdk/net/e$a;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/net/e$a;-><init>()V

    const-string v4, "https://service.weibo.com/share/mobilesdk_uppic.php"

    .line 1083
    iput-object v4, v3, Lcom/sina/weibo/sdk/net/e$a;->i:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, v1, v2}, Lcom/sina/weibo/sdk/net/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v3

    .line 45
    invoke-direct {p0, v2}, Lcom/sina/weibo/sdk/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/sina/weibo/sdk/net/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v3

    const-string v4, "appKey"

    iget-object v5, p0, Lcom/sina/weibo/sdk/a/d;->ad:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, v4, v5}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v1, v2}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v1

    .line 48
    invoke-direct {p0, v2}, Lcom/sina/weibo/sdk/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v0

    const-string v1, "img"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/d;->ac:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/e$a;->e()Lcom/sina/weibo/sdk/net/e;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/sina/weibo/sdk/net/b;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/b;-><init>()V

    .line 52
    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/net/a;->a(Lcom/sina/weibo/sdk/net/d;)Lcom/sina/weibo/sdk/net/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/net/f;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    iput-object v0, p0, Lcom/sina/weibo/sdk/a/d;->ab:Ljava/lang/Throwable;

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final synthetic l()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/sina/weibo/sdk/a/d;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 2062
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/d;->ab:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 2063
    iget-object p1, p0, Lcom/sina/weibo/sdk/a/d;->aa:Lcom/sina/weibo/sdk/net/c;

    if-eqz p1, :cond_0

    .line 2064
    invoke-interface {p1, v0}, Lcom/sina/weibo/sdk/net/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 2068
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/d;->aa:Lcom/sina/weibo/sdk/net/c;

    if-eqz v0, :cond_2

    .line 2069
    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/net/c;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
