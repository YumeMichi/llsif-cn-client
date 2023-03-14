.class final Lcom/ghome/gshare/util/GShareNetUtils$3;
.super Ljava/lang/Object;
.source "GShareNetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/util/GShareNetUtils;->doGet(Ljava/lang/String;Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$callback:Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareNetUtils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/ghome/gshare/util/GShareNetUtils$3$1;

    invoke-direct {v2, p0, v0}, Lcom/ghome/gshare/util/GShareNetUtils$3$1;-><init>(Lcom/ghome/gshare/util/GShareNetUtils$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
