.class public Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;
.super Ljava/lang/Object;
.source "GShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/share_dialog/GShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnClickListener"
.end annotation


# static fields
.field public static final MIN_CLICK_DELAY_TIME:I = 0x3e8


# instance fields
.field private lastClickTime:J

.field private mPosition:I

.field final synthetic this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;


# direct methods
.method public constructor <init>(Lcom/ghome/gshare/share_dialog/GShareDialog;I)V
    .locals 2

    .line 140
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->lastClickTime:J

    .line 141
    iput p2, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->mPosition:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 146
    iget-wide v2, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 147
    iput-wide v0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->lastClickTime:J

    .line 148
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    iget-object v0, v0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-static {v1}, Lcom/ghome/gshare/share_dialog/GShareDialog;->access$100(Lcom/ghome/gshare/share_dialog/GShareDialog;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->mPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-virtual {v0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->cancel()V

    .line 150
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-static {v0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->access$200(Lcom/ghome/gshare/share_dialog/GShareDialog;)Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-static {v0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->access$200(Lcom/ghome/gshare/share_dialog/GShareDialog;)Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;

    move-result-object v0

    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;->mPosition:I

    invoke-interface {v0, p1, v1}, Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;->OnClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
