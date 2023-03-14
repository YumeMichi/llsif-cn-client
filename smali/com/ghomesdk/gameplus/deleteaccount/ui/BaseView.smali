.class public abstract Lcom/ghomesdk/gameplus/deleteaccount/ui/BaseView;
.super Ljava/lang/Object;
.source "BaseView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/BaseView;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/GLog;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public abstract init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
.end method

.method public show()V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/BaseView;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sqo/eventcollection/EventLog;->onPageIn(Ljava/lang/String;)V

    return-void
.end method
