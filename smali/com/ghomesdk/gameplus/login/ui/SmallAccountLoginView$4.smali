.class Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;
.super Ljava/lang/Object;
.source "SmallAccountLoginView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

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

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 71
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getMasterAcc()Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$002(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getExtendAccs()Ljava/util/List;

    move-result-object p2

    add-int/lit8 p4, p3, -0x1

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->getAccname()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$002(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->setSelectPosition(I)V

    .line 76
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;->notifyDataSetChanged()V

    return-void
.end method
