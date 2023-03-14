.class Lcom/ghome/sdk/GHome$8;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->loginUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/ghome/sdk/GHome$8;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$8;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput-object p4, p0, Lcom/ghome/sdk/GHome$8;->val$actionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 767
    iget-object p1, p0, Lcom/ghome/sdk/GHome$8;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$8;->val$activity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/ghome/sdk/GHome$8;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$8;->val$actionName:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/ghome/sdk/GHome;->access$2000(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    return-void
.end method
