.class Lcom/geetest/sdk/af;
.super Ljava/lang/Object;
.source "GeeLoggerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/af$a;
    }
.end annotation


# instance fields
.field a:Lcom/geetest/sdk/af$a;

.field b:Lcom/geetest/sdk/aq;

.field c:Lcom/geetest/sdk/al;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/af;->a:Lcom/geetest/sdk/af$a;

    if-eqz v0, :cond_3

    .line 2
    sget-object v1, Lcom/geetest/sdk/af$a;->SEND:Lcom/geetest/sdk/af$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/af;->c:Lcom/geetest/sdk/al;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geetest/sdk/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/af;->a:Lcom/geetest/sdk/af$a;

    sget-object v1, Lcom/geetest/sdk/af$a;->WRITE:Lcom/geetest/sdk/af$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/geetest/sdk/af;->b:Lcom/geetest/sdk/aq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/geetest/sdk/aq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/af;->a:Lcom/geetest/sdk/af$a;

    sget-object v1, Lcom/geetest/sdk/af$a;->FLUSH:Lcom/geetest/sdk/af$a;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/geetest/sdk/af$a;->OTHER:Lcom/geetest/sdk/af$a;

    if-ne v0, v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
