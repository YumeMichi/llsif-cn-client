.class Lextension/ShengQu/GHomeExtension$10;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension;->BuyItem(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$area:Ljava/lang/String;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$10;->val$area:Ljava/lang/String;

    iput-object p2, p0, Lextension/ShengQu/GHomeExtension$10;->val$sku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 493
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lextension/ShengQu/GHomeExtension$10;->val$area:Ljava/lang/String;

    iget-object v5, p0, Lextension/ShengQu/GHomeExtension$10;->val$sku:Ljava/lang/String;

    new-instance v7, Lextension/ShengQu/GHomeExtension$1my_payCallback;

    invoke-direct {v7, v5}, Lextension/ShengQu/GHomeExtension$1my_payCallback;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "1"

    const-string v6, "1"

    invoke-virtual/range {v0 .. v7}, Lcom/ghome/sdk/GHome;->pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call pay in game in ui thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lextension/ShengQu/GHomeExtension$10;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " area "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lextension/ShengQu/GHomeExtension$10;->val$area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gp"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
