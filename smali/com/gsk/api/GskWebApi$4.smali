.class Lcom/gsk/api/GskWebApi$4;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->showErrorInPwdPanel(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$4;->this$0:Lcom/gsk/api/GskWebApi;

    iput-object p2, p0, Lcom/gsk/api/GskWebApi$4;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/gsk/api/GskWebApi$4;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 233
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$4;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/gsk/api/GskWebApi$4;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gsk/TouchMatrixActivity;->showError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
