.class Lcom/gsk/api/GskWebApi$3;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->showBackInPwdPanel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$3;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$3;->this$0:Lcom/gsk/api/GskWebApi;

    iget-boolean v1, v1, Lcom/gsk/api/GskWebApi;->showBackButton:Z

    invoke-virtual {v0, v1}, Lcom/gsk/TouchMatrixActivity;->showBackButton(Z)V

    return-void
.end method
