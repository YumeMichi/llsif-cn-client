.class public final Lcom/sina/weibo/sdk/net/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/net/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/e$a;
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;

.field private j:Landroid/os/Bundle;

.field private k:Landroid/os/Bundle;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/net/e$a;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e;->j:Landroid/os/Bundle;

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e;->k:Landroid/os/Bundle;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e;->l:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e;->m:Ljava/util/Map;

    .line 24
    iget-object v0, p1, Lcom/sina/weibo/sdk/net/e$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e;->i:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e;->j:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/sina/weibo/sdk/net/e$a;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e;->k:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/sina/weibo/sdk/net/e$a;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e;->l:Ljava/util/Map;

    iget-object v1, p1, Lcom/sina/weibo/sdk/net/e$a;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e;->m:Ljava/util/Map;

    iget-object v1, p1, Lcom/sina/weibo/sdk/net/e$a;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    iget v0, p1, Lcom/sina/weibo/sdk/net/e$a;->n:I

    iput v0, p0, Lcom/sina/weibo/sdk/net/e;->n:I

    .line 30
    iget p1, p1, Lcom/sina/weibo/sdk/net/e$a;->o:I

    iput p1, p0, Lcom/sina/weibo/sdk/net/e;->o:I

    return-void
.end method


# virtual methods
.method public final d()Landroid/os/Bundle;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e;->k:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sina/weibo/sdk/net/e;->n:I

    return v0
.end method

.method public final getParams()Landroid/os/Bundle;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/sina/weibo/sdk/net/e;->o:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e;->i:Ljava/lang/String;

    return-object v0
.end method
