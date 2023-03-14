.class public Lcom/bytedance/applog/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static b:I

.field public static c:Lcom/bytedance/applog/c1;

.field public static d:Lcom/bytedance/applog/c1;

.field public static e:J

.field public static f:Ljava/lang/String;

.field public static g:Z

.field public static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/bytedance/applog/IPicker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/bytedance/applog/c;->h:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/applog/IPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/c;->a:Lcom/bytedance/applog/IPicker;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/applog/c1;
    .locals 2

    new-instance v0, Lcom/bytedance/applog/c1;

    invoke-direct {v0}, Lcom/bytedance/applog/c1;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    iput-object p0, v0, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/applog/u0;->a(J)V

    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lcom/bytedance/applog/c1;->k:J

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, ""

    :goto_0
    iput-object p4, v0, Lcom/bytedance/applog/c1;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/bytedance/applog/c;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {p1, v3, v0, v1, v2}, Lcom/bytedance/applog/c;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/applog/c1;

    move-result-object p1

    sput-object p1, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    sget-object p1, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    sget-object v0, Lcom/bytedance/applog/c;->h:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput p2, p1, Lcom/bytedance/applog/c1;->n:I

    iget-object p1, p0, Lcom/bytedance/applog/c;->a:Lcom/bytedance/applog/IPicker;

    if-eqz p1, :cond_0

    sget-boolean p2, Lcom/bytedance/applog/c;->g:Z

    if-eqz p2, :cond_0

    invoke-interface {p1, v0}, Lcom/bytedance/applog/IPicker;->show(Z)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Lcom/bytedance/applog/c;->h:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/c;->h:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 7

    sget-object v0, Lcom/bytedance/applog/c;->d:Lcom/bytedance/applog/c1;

    sget-object v0, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/applog/c;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/applog/c;->e:J

    sget-object v0, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    sget-wide v1, Lcom/bytedance/applog/c;->e:J

    .line 1
    invoke-virtual {v0}, Lcom/bytedance/applog/u0;->clone()Lcom/bytedance/applog/u0;

    move-result-object v3

    check-cast v3, Lcom/bytedance/applog/c1;

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/applog/u0;->a(J)V

    iget-wide v4, v0, Lcom/bytedance/applog/u0;->b:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    cmp-long v6, v1, v4

    if-ltz v6, :cond_0

    iput-wide v1, v3, Lcom/bytedance/applog/c1;->k:J

    goto :goto_0

    :cond_0
    const-string v1, "U SHALL NOT PASS!"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    invoke-static {v3}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V

    .line 4
    sput-object v0, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    :cond_1
    iget-object p1, p0, Lcom/bytedance/applog/c;->a:Lcom/bytedance/applog/IPicker;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/applog/IPicker;->show(Z)V

    :cond_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bytedance/applog/c;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4, v0, v1, v3}, Lcom/bytedance/applog/c;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/applog/c1;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    sget-object v0, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    sget-object v1, Lcom/bytedance/applog/c;->h:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput v1, v0, Lcom/bytedance/applog/c1;->n:I

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/c;->a:Lcom/bytedance/applog/IPicker;

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/bytedance/applog/c;->g:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, Lcom/bytedance/applog/IPicker;->show(Z)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    sget p1, Lcom/bytedance/applog/c;->b:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/bytedance/applog/c;->b:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    sget-object p1, Lcom/bytedance/applog/c;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget p1, Lcom/bytedance/applog/c;->b:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/bytedance/applog/c;->b:I

    sget p1, Lcom/bytedance/applog/c;->b:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/bytedance/applog/c;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/applog/c;->e:J

    :cond_0
    return-void
.end method
