.class Lcom/gsk/api/GskWebApi$2;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->closePwdPanel()V
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

    .line 200
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$2;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 203
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsk/TouchMatrixActivity;->finish()V

    return-void
.end method
