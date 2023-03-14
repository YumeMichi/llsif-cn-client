.class public Lcom/bytedance/applog/t0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/t0;->a(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Lcom/bytedance/applog/t0;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/t0;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/t0$a;->b:Lcom/bytedance/applog/t0;

    iput-object p2, p0, Lcom/bytedance/applog/t0$a;->a:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/t0$a;->b:Lcom/bytedance/applog/t0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/t0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/bytedance/applog/t0$a;->b:Lcom/bytedance/applog/t0;

    .line 3
    iget-object v0, v0, Lcom/bytedance/applog/t0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/applog/t0$a;->b:Lcom/bytedance/applog/t0;

    .line 5
    iget-object v0, v0, Lcom/bytedance/applog/t0;->c:Landroid/accounts/AccountManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/t0$a;->b:Lcom/bytedance/applog/t0;

    .line 7
    iget-object v0, v0, Lcom/bytedance/applog/t0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bytedance/applog/t0$a;->b:Lcom/bytedance/applog/t0;

    .line 9
    iget-object v2, v2, Lcom/bytedance/applog/t0;->c:Landroid/accounts/AccountManager;

    .line 10
    iget-object v3, p0, Lcom/bytedance/applog/t0$a;->a:Landroid/accounts/Account;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/applog/t0$a;->b:Lcom/bytedance/applog/t0;

    .line 11
    iget-object v0, v0, Lcom/bytedance/applog/t0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
