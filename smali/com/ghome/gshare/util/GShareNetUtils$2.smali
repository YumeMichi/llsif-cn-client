.class final Lcom/ghome/gshare/util/GShareNetUtils$2;
.super Ljava/lang/Object;
.source "GShareNetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/util/GShareNetUtils;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;

.field final synthetic val$file:Ljava/util/Map;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/os/Handler;Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$params:Ljava/util/Map;

    iput-object p3, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$file:Ljava/util/Map;

    iput-object p4, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$callback:Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$params:Ljava/util/Map;

    iget-object v2, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$file:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/GShareNetUtils;->access$000(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/ghome/gshare/util/GShareNetUtils$2;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/ghome/gshare/util/GShareNetUtils$2$1;

    invoke-direct {v2, p0, v0}, Lcom/ghome/gshare/util/GShareNetUtils$2$1;-><init>(Lcom/ghome/gshare/util/GShareNetUtils$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
