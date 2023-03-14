.class public interface abstract Lcom/ghomesdk/gameplus/oaid/OaidSDKHelper$AppIdsUpdater;
.super Ljava/lang/Object;
.source "OaidSDKHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/oaid/OaidSDKHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppIdsUpdater"
.end annotation


# virtual methods
.method public abstract OnIdsAvalid(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onOaidCallback(Ljava/lang/String;)V
.end method
