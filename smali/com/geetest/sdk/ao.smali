.class public abstract Lcom/geetest/sdk/ao;
.super Ljava/lang/Object;
.source "SendLogRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/ao$a;
    }
.end annotation


# instance fields
.field private a:Lcom/geetest/sdk/al;

.field private b:Lcom/geetest/sdk/ao$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/ao;->b:Lcom/geetest/sdk/ao$a;

    if-eqz v0, :cond_0

    const/16 v1, 0x2712

    .line 3
    invoke-interface {v0, v1}, Lcom/geetest/sdk/ao$a;->a(I)V

    :cond_0
    return-void
.end method

.method a(Lcom/geetest/sdk/al;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/ao;->a:Lcom/geetest/sdk/al;

    return-void
.end method

.method public abstract a(Ljava/io/File;)V
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/ao;->a:Lcom/geetest/sdk/al;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/geetest/sdk/al;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/ao;->a:Lcom/geetest/sdk/al;

    iget-object v0, v0, Lcom/geetest/sdk/al;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/geetest/sdk/ao;->a()V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/geetest/sdk/ao;->a:Lcom/geetest/sdk/al;

    iget-object v1, v1, Lcom/geetest/sdk/al;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/geetest/sdk/ao;->a(Ljava/io/File;)V

    return-void

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/geetest/sdk/ao;->a()V

    return-void
.end method

.method setCallBackListener(Lcom/geetest/sdk/ao$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/ao;->b:Lcom/geetest/sdk/ao$a;

    return-void
.end method
