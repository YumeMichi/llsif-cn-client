.class Lcom/gsk/api/GskWebApi$10;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->goAlipay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;

.field final synthetic val$payResultHandler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$10;->this$0:Lcom/gsk/api/GskWebApi;

    iput-object p2, p0, Lcom/gsk/api/GskWebApi$10;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/gsk/api/GskWebApi$10;->val$payResultHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gsk/api/GskWebApi$10$1;

    invoke-direct {v1, p0}, Lcom/gsk/api/GskWebApi$10$1;-><init>(Lcom/gsk/api/GskWebApi$10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
