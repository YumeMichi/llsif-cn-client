.class Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;
.super Ljava/lang/Object;
.source "VoiceCodeDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 75
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;

    sget p2, Lcom/ghomesdk/gameplus/config/Config;->VOICE_WAIT_TIME:I

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;-><init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;JJ)V

    .line 86
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u8bed\u97f3\u9a8c\u8bc1\u7801"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
