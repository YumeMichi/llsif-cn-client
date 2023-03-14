.class public abstract Lcom/geetest/sdk/bb;
.super Ljava/lang/Object;
.source "GTUserRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/bb$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/geetest/sdk/model/beans/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/geetest/sdk/GT3ConfigBean;

.field private e:Lcom/geetest/sdk/g;

.field private f:Lcom/geetest/sdk/model/beans/b;

.field private g:J

.field private h:Lcom/geetest/sdk/a$d;

.field private i:I

.field private j:Lcom/geetest/sdk/model/beans/c;

.field public k:Lcom/geetest/sdk/bb$a;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/geetest/sdk/bb;->a:I

    .line 12
    iput v0, p0, Lcom/geetest/sdk/bb;->i:I

    .line 134
    sget-object v0, Lcom/geetest/sdk/bb$a;->NORMAL:Lcom/geetest/sdk/bb$a;

    .line 135
    iput p1, p0, Lcom/geetest/sdk/bb;->a:I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geetest/sdk/bb;->g:J

    return-void
.end method


# virtual methods
.method public a()Lcom/geetest/sdk/a$d;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/bb;->h:Lcom/geetest/sdk/a$d;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/geetest/sdk/bb;->i:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/bb;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/geetest/sdk/bb;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-void
.end method

.method public a(Lcom/geetest/sdk/g;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/bb;->e:Lcom/geetest/sdk/g;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/bb;->b:Lcom/geetest/sdk/model/beans/a;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/b;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/geetest/sdk/bb;->f:Lcom/geetest/sdk/model/beans/b;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/c;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/geetest/sdk/bb;->j:Lcom/geetest/sdk/model/beans/c;

    return-void
.end method

.method public b()Lcom/geetest/sdk/GT3ConfigBean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/bb;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/bb;->a:I

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/bb;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lcom/geetest/sdk/model/beans/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/bb;->f:Lcom/geetest/sdk/model/beans/b;

    return-object v0
.end method

.method public e()Lcom/geetest/sdk/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/bb;->e:Lcom/geetest/sdk/g;

    return-object v0
.end method

.method public f()Lcom/geetest/sdk/model/beans/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/bb;->b:Lcom/geetest/sdk/model/beans/a;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/bb;->i:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/bb;->a:I

    return v0
.end method

.method public i()Lcom/geetest/sdk/model/beans/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/bb;->j:Lcom/geetest/sdk/model/beans/c;

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geetest/sdk/bb;->g:J

    return-wide v0
.end method

.method public setButtonListener(Lcom/geetest/sdk/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/bb;->h:Lcom/geetest/sdk/a$d;

    return-void
.end method
