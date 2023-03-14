.class Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$3;
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

    .line 98
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->dismiss()V

    return-void
.end method
