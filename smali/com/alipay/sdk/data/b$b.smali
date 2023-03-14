.class public final Lcom/alipay/sdk/data/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/data/b;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/sys/a;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/data/b$b;->a:Lcom/alipay/sdk/sys/a;

    iput-object p2, p0, Lcom/alipay/sdk/data/b$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/sdk/data/b$b;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alipay/sdk/data/b$b;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/data/b$b;->a:Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/data/b$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/sdk/data/b$b;->c:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/data/b;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
