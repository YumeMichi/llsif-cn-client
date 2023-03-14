.class public La/a/a/a/b/a;
.super Ljava/lang/Object;
.source "DYApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, La/a/a/a/b/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/b/a;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, -0x2

    const-string v4, "\u7528\u6237\u53d6\u6d88\u6388\u6743"

    invoke-virtual {v0, v1, v2, v3, v4}, La/a/a/a/b/b;->a(Landroid/content/Context;ZILjava/lang/String;)V

    return-void
.end method
