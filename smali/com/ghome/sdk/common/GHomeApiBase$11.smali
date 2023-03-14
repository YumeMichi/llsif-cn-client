.class Lcom/ghome/sdk/common/GHomeApiBase$11;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->showFloatIcon(Landroid/app/Activity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$position:I

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;ZI)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->val$show:Z

    iput p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->val$activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->val$show:Z

    iget v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$11;->val$position:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ghome/sdk/common/GHomeApiBase;->showFloatIconUI(Landroid/app/Activity;ZI)V

    return-void
.end method
