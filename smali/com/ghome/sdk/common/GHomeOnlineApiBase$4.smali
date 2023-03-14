.class Lcom/ghome/sdk/common/GHomeOnlineApiBase$4;
.super Ljava/lang/Object;
.source "GHomeOnlineApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeOnlineApiBase;->destroy(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeOnlineApiBase;Landroid/app/Activity;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$4;->this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$4;->this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ghome/sdk/common/GHomeOnlineApiBase;->initFlag:Z

    .line 410
    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ghome/sdk/common/GHomeOnlineApiBase;->ChannelDestory(Landroid/app/Activity;)Z

    return-void
.end method
