.class Lcom/ghome/sdk/common/GHomeApiBase$5;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->loginArea(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$areaId:Ljava/lang/String;

.field final synthetic val$groupId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->val$areaId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->val$groupId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->val$areaId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$5;->val$groupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ghome/sdk/common/GHomeApiBase;->loginAreaUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
