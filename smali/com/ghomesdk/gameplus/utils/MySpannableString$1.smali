.class Lcom/ghomesdk/gameplus/utils/MySpannableString$1;
.super Landroid/text/style/ClickableSpan;
.source "MySpannableString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/MySpannableString;

.field final synthetic val$onClickListener:Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/MySpannableString;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/MySpannableString$1;->this$0:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/MySpannableString$1;->val$onClickListener:Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/MySpannableString$1;->val$onClickListener:Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;

    invoke-interface {v0, p1}, Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 172
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
