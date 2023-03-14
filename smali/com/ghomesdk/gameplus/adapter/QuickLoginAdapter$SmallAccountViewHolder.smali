.class Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;
.super Ljava/lang/Object;
.source "QuickLoginAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallAccountViewHolder"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field phoneNumber:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;Landroid/view/View;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->this$0:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "iv_quick_login_select_arrow"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->arrow:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tv_quick_login_phone_number"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$SmallAccountViewHolder;->phoneNumber:Landroid/widget/TextView;

    return-void
.end method
