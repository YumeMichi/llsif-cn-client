.class Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;
.super Ljava/lang/Object;
.source "GeetestCodeBind.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->onDialogResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;->this$1:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 114
    iget-object p3, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;->this$1:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCheckCodeLogin Callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",url = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;->this$1:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$200(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "\u9a8c\u8bc1\u6210\u529f"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 117
    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;->this$1:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$600(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;->this$1:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$600(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
