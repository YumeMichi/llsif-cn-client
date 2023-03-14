.class public Lcom/ghome/sdk/common/GHomeProxy;
.super Ljava/lang/Object;
.source "GHomeProxy.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi;


# static fields
.field private static instance:Lcom/ghome/sdk/common/GHomeProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ghome/sdk/common/GHomeProxy;
    .locals 1

    .line 20
    sget-object v0, Lcom/ghome/sdk/common/GHomeProxy;->instance:Lcom/ghome/sdk/common/GHomeProxy;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/ghome/sdk/common/GHomeProxy;

    invoke-direct {v0}, Lcom/ghome/sdk/common/GHomeProxy;-><init>()V

    sput-object v0, Lcom/ghome/sdk/common/GHomeProxy;->instance:Lcom/ghome/sdk/common/GHomeProxy;

    .line 23
    :cond_0
    sget-object v0, Lcom/ghome/sdk/common/GHomeProxy;->instance:Lcom/ghome/sdk/common/GHomeProxy;

    return-object v0
.end method


# virtual methods
.method public changeThirdBindPhone(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public create(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public destroy(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public doExtend(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghome/sdk/common/IGHomeApi$Callback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public doPrivacyAgreement(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public filterSensitiveWord(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public getAgreement(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public getAgreementContent(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public getAgreementStatus(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public getApplicationChannel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getApplicationSuperChannel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAreaConfig(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public getCPSChannelCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getChannelCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGHomeDeviceId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProductConfig(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public getTicket(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public kickOff(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public loginArea(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loginArea(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public logout(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onUserAgreement(Landroid/app/Activity;ZZ)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    return-void
.end method

.method public pause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public restart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public scanQRCode(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public setGameEngine(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setReleaseEnvironment(Z)V
    .locals 0

    return-void
.end method

.method public showFloatIcon(Landroid/app/Activity;ZI)V
    .locals 0

    return-void
.end method

.method public start(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public stop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public switchAccount(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public switchAccount(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method

.method public writtenOff(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    return-void
.end method
