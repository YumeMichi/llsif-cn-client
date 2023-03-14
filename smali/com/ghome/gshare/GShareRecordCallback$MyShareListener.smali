.class public Lcom/ghome/gshare/GShareRecordCallback$MyShareListener;
.super Ljava/lang/Object;
.source "GShareRecordCallback.java"

# interfaces
.implements Lcom/ghome/gshare/listener/GShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/GShareRecordCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyShareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/GShareRecordCallback;


# direct methods
.method public constructor <init>(Lcom/ghome/gshare/GShareRecordCallback;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ghome/gshare/GShareRecordCallback$MyShareListener;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback$MyShareListener;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-static {v0}, Lcom/ghome/gshare/GShareRecordCallback;->access$000(Lcom/ghome/gshare/GShareRecordCallback;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " share onCancel"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onComplete(Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback$MyShareListener;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-static {v0}, Lcom/ghome/gshare/GShareRecordCallback;->access$000(Lcom/ghome/gshare/GShareRecordCallback;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " share onComplete"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback$MyShareListener;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-static {v0}, Lcom/ghome/gshare/GShareRecordCallback;->access$000(Lcom/ghome/gshare/GShareRecordCallback;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " share onError:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onOpen(Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback$MyShareListener;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-static {v0}, Lcom/ghome/gshare/GShareRecordCallback;->access$000(Lcom/ghome/gshare/GShareRecordCallback;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " app onOpen"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
