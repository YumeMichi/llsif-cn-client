.class Lcom/ghomesdk/gameplus/login/LoginDialog$1;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginDialog;->getLoginCallback()Lcom/ghomesdk/gameplus/callback/LoginCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 4
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

    .line 117
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$000(Lcom/ghomesdk/gameplus/login/LoginDialog;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 118
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$100(Lcom/ghomesdk/gameplus/login/LoginDialog;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$201(Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 120
    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$302(Z)Z

    .line 121
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$000(Lcom/ghomesdk/gameplus/login/LoginDialog;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 122
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$002(Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$401(Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 125
    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$302(Z)Z

    .line 126
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$000(Lcom/ghomesdk/gameplus/login/LoginDialog;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 127
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$002(Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_LIMIT_ENABLE:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$500(Lcom/ghomesdk/gameplus/login/LoginDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginDialog$1;ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/impl/ServerApi;->getLimitData(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$901(Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 169
    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$302(Z)Z

    .line 170
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$000(Lcom/ghomesdk/gameplus/login/LoginDialog;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 171
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$002(Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    :cond_3
    :goto_0
    return-void
.end method
