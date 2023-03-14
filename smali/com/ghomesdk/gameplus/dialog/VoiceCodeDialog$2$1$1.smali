.class Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;
.super Landroid/os/CountDownTimer;
.source "VoiceCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->callback(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;JJ)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;->this$2:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;->this$2:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;->this$2:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u8bed\u97f3\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1$1;->this$2:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
