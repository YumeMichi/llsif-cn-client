.class public Lcom/shengqu/daoyu/opensdk/openapi/DYAPIFactory;
.super Ljava/lang/Object;
.source "DYAPIFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crateDYAPI(Landroid/content/Context;)Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;
    .locals 1

    .line 1
    new-instance v0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;

    invoke-direct {v0, p0}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
