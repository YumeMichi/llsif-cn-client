.class Lcom/geetest/sdk/dialog/views/a$b$c;
.super Ljava/lang/Object;
.source "WebviewBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/dialog/views/a$b;->gt3Error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/geetest/sdk/dialog/views/a$b;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/dialog/views/a$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b$c;->b:Lcom/geetest/sdk/dialog/views/a$b;

    iput-object p2, p0, Lcom/geetest/sdk/dialog/views/a$b$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a$b$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[a-zA-Z]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_error"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/a$b$c;->b:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v2, v2, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v2}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/geetest/sdk/au;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a$b$c;->b:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v1, v1, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a$b$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "202"

    invoke-virtual {v1, v2, v0}, Lcom/geetest/sdk/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
