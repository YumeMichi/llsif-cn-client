.class Lcom/ghome/gshare/util/GShareNetUtils$3$1;
.super Ljava/lang/Object;
.source "GShareNetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/util/GShareNetUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/util/GShareNetUtils$3;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/util/GShareNetUtils$3;Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/ghome/gshare/util/GShareNetUtils$3$1;->this$0:Lcom/ghome/gshare/util/GShareNetUtils$3;

    iput-object p2, p0, Lcom/ghome/gshare/util/GShareNetUtils$3$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/ghome/gshare/util/GShareNetUtils$3$1;->val$response:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ghome/gshare/util/GShareNetUtils$3$1;->this$0:Lcom/ghome/gshare/util/GShareNetUtils$3;

    iget-object v0, v0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$callback:Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;

    invoke-interface {v0}, Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;->onFailure()V

    return-void

    .line 149
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/ghome/gshare/util/GShareNetUtils$3$1;->this$0:Lcom/ghome/gshare/util/GShareNetUtils$3;

    iget-object v0, v0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$callback:Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;

    invoke-interface {v0, v1}, Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    iget-object v0, p0, Lcom/ghome/gshare/util/GShareNetUtils$3$1;->this$0:Lcom/ghome/gshare/util/GShareNetUtils$3;

    iget-object v0, v0, Lcom/ghome/gshare/util/GShareNetUtils$3;->val$callback:Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;

    invoke-interface {v0}, Lcom/ghome/gshare/util/GShareNetUtils$HttpResponseCallBack;->onFailure()V

    :goto_0
    return-void
.end method
