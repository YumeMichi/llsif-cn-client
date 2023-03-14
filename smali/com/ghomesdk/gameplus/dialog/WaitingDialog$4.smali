.class Lcom/ghomesdk/gameplus/dialog/WaitingDialog$4;
.super Ljava/util/TimerTask;
.source "WaitingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/WaitingDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$4;->this$0:Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$4;->this$0:Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$4;->this$0:Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method
