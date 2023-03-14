.class public Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;
.super Ljava/lang/Object;
.source "GApkUpdateCustomCallback.java"


# instance fields
.field private myLog:Lorg/apache/log4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->myLog:Lorg/apache/log4j/Logger;

    return-void
.end method


# virtual methods
.method public getLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->myLog:Lorg/apache/log4j/Logger;

    if-nez v0, :cond_0

    .line 31
    const-class v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->myLog:Lorg/apache/log4j/Logger;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->myLog:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public onDownloadComplete()V
    .locals 0

    return-void
.end method

.method public onNeedUpate(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onNotNeedUpate()V
    .locals 0

    return-void
.end method

.method public onUpdateError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
