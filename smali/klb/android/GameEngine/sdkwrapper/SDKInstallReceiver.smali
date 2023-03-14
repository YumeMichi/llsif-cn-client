.class public Lklb/android/GameEngine/sdkwrapper/SDKInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDKInstallReceiver.java"


# instance fields
.field extensionRuntime:Lklb/android/GameEngine/KLBExtensionRuntime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/sdkwrapper/SDKInstallReceiver;->extensionRuntime:Lklb/android/GameEngine/KLBExtensionRuntime;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lklb/android/GameEngine/sdkwrapper/SDKInstallReceiver;->extensionRuntime:Lklb/android/GameEngine/KLBExtensionRuntime;

    invoke-virtual {v0, p1, p2}, Lklb/android/GameEngine/KLBExtensionRuntime;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
