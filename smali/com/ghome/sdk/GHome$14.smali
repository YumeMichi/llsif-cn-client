.class Lcom/ghome/sdk/GHome$14;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->doExtendUI(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/ghome/sdk/GHome$14;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$14;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$14;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
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

    .line 1028
    iget-object v0, p0, Lcom/ghome/sdk/GHome$14;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghome/sdk/GHome$14;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string v5, "doExtend"

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
