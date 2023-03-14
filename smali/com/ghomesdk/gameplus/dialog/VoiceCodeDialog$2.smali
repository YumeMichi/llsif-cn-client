.class Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "VoiceCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 7

    .line 70
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$100(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->access$200(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2$1;-><init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;)V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
