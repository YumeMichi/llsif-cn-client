.class Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;
.super Ljava/lang/Object;
.source "QuickLoginView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$402(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->setSelectPosition(I)V

    .line 161
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$202(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;I)I

    return-void
.end method
