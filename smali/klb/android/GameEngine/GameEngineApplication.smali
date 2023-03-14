.class public Lklb/android/GameEngine/GameEngineApplication;
.super Lcom/ghome/sdk/GHomeApplication;
.source "GameEngineApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/ghome/sdk/GHomeApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/ghome/sdk/GHomeApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 14
    invoke-super {p0}, Lcom/ghome/sdk/GHomeApplication;->onCreate()V

    .line 16
    invoke-static {}, Lklb/android/GameEngine/prngfix/PRNGFixes;->apply()V

    .line 17
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/PFInterface;->loadProxy(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lklb/android/GameEngine/RClassReference;->initialize(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnApplicationCreate(Landroid/app/Application;)V

    return-void
.end method
