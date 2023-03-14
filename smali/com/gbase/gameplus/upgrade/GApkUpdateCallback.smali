.class public interface abstract Lcom/gbase/gameplus/upgrade/GApkUpdateCallback;
.super Ljava/lang/Object;
.source "GApkUpdateCallback.java"

# interfaces
.implements Lcom/gbase/gameplus/upgrade/UpgradeCallback;


# virtual methods
.method public abstract onDownloadCancel()V
.end method

.method public abstract onDownloadChange(JJ)V
.end method

.method public abstract onDownloadFinish(ZLjava/lang/String;)V
.end method

.method public abstract onDownloadStart()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onMD5CheckFinish(ZLjava/lang/String;)V
.end method

.method public abstract onMD5CheckStart()V
.end method

.method public abstract onResetDownload(Ljava/lang/String;)V
.end method

.method public abstract onUpgradeInfoResult(ILjava/lang/String;)V
.end method
