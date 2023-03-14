.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$4;
.super Ljava/lang/Object;
.source "BindPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doThirdBindPhone: code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BindPhoneDialog "

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$400(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p3

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$400(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p1

    const/4 p3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, p3, p2, v0}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 162
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->dismiss()V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$400(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p1

    const/4 p3, 0x4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, p3, p2, v0}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
