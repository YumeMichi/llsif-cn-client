.class public interface abstract Lcom/ghome/sdk/common/IGHomeApi;
.super Ljava/lang/Object;
.source "IGHomeApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghome/sdk/common/IGHomeApi$Callback;,
        Lcom/ghome/sdk/common/IGHomeApi$ScreenOrientation;,
        Lcom/ghome/sdk/common/IGHomeApi$FloatIconPosition;
    }
.end annotation


# static fields
.field public static final EXTEND_COMMAND_DUOWAN_OPEN_BBS:I = 0x3ee

.field public static final EXTEND_COMMAND_ENTER_GAME:I = 0x3f0

.field public static final EXTEND_COMMAND_EXIT_PAGE:I = 0x3ed

.field public static final EXTEND_COMMAND_GUEST_UPGRADE:I = 0x3f1

.field public static final EXTEND_COMMAND_PAUSE_PAGE:I = 0x3ec

.field public static final EXTEND_COMMAND_PERFORMANCE_OPTIMIZATION:I = 0x7d1

.field public static final EXTEND_COMMAND_SUBMIT_EXTEND_DATA:I = 0x3eb


# virtual methods
.method public abstract changeThirdBindPhone(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract create(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract destroy(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract doExtend(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
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
.end method

.method public abstract doPrivacyAgreement(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract filterSensitiveWord(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract getAgreement(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract getAgreementContent(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract getAgreementStatus(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract getApplicationChannel()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getApplicationSuperChannel()Ljava/lang/String;
.end method

.method public abstract getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAreaConfig(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract getCPSChannelCode(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getChannelCode()Ljava/lang/String;
.end method

.method public abstract getGHomeDeviceId(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract getProductConfig(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract getTicket(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract kickOff(Landroid/app/Activity;)V
.end method

.method public abstract login(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract loginArea(Landroid/app/Activity;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loginArea(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logout(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onBackPressed(Landroid/app/Activity;)V
.end method

.method public abstract onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;)V
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
.end method

.method public abstract onRestart(Landroid/app/Activity;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onStart(Landroid/app/Activity;)V
.end method

.method public abstract onStop(Landroid/app/Activity;)V
.end method

.method public abstract onUserAgreement(Landroid/app/Activity;ZZ)V
.end method

.method public abstract onWindowFocusChanged(Landroid/app/Activity;Z)V
.end method

.method public abstract pause(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract restart(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resume(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract scanQRCode(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract setGameEngine(Ljava/lang/String;)V
.end method

.method public abstract setReleaseEnvironment(Z)V
.end method

.method public abstract showFloatIcon(Landroid/app/Activity;ZI)V
.end method

.method public abstract start(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract stop(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract switchAccount(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract switchAccount(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method

.method public abstract writtenOff(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end method
