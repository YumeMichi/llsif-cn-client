.class public Lcom/ghome/sdk/GHomeApplication;
.super Lcom/ghome/sdk/common/BaseApplication;
.source "GHomeApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/ghome/sdk/common/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/ghome/sdk/common/BaseApplication;->onCreate()V

    .line 12
    invoke-static {p0}, Lcom/sqo/eventcollection/EventLog;->init(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ghome/sdk/GHomeApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
