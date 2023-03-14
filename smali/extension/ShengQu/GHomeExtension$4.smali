.class Lextension/ShengQu/GHomeExtension$4;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension;->Login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lextension/ShengQu/GHomeExtension;->b_Dologin:Z

    .line 233
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lextension/ShengQu/GHomeExtension$4$1;

    invoke-direct {v2, p0}, Lextension/ShengQu/GHomeExtension$4$1;-><init>(Lextension/ShengQu/GHomeExtension$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/ghome/sdk/GHome;->login(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
