.class public Lcom/ghome/sdk/common/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventViewUtil;->report(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/ghome/sdk/common/BaseActivity;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sqo/eventcollection/EventLog;->onPageIn(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/ghome/sdk/common/BaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sqo/eventcollection/EventLog;->onPageOut(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/ghome/sdk/common/BaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->cancelByTag(Ljava/lang/Object;)V

    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 41
    invoke-static {p0}, Lcom/greport/glog/GLog;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    invoke-static {p0}, Lcom/greport/glog/GLog;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
