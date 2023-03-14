.class Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$4;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

.field final synthetic val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;Lcom/ghomesdk/gameplus/dialog/CommonDialog;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$4;->this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$4;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$4;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->cancel()V

    return-void
.end method
