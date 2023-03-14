.class public Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;
.super Landroid/widget/BaseAdapter;
.source "LoginIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private iconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ghomesdk/gameplus/login/model/LoginIconModel;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/ghomesdk/gameplus/login/model/LoginIconModel;",
            ">;",
            "Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->iconList:Ljava/util/ArrayList;

    .line 30
    iput-object p3, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->listener:Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;)Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->listener:Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->iconList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->iconList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->iconList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 57
    new-instance p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;

    invoke-direct {p2}, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_login_icon_item"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->context:Landroid/content/Context;

    const-string v2, "tv_login_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;->tvLoginIcon:Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->context:Landroid/content/Context;

    const-string v2, "view_login_mode_divider"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;->divider:Landroid/view/View;

    .line 61
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->iconList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->iconList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->iconList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;

    if-eqz v1, :cond_2

    .line 69
    iget-object v2, p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;->tvLoginIcon:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    .line 70
    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->getLoginIconName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->getLoginIconName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->getLoginIconName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 74
    iget-object v2, p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;->tvLoginIcon:Landroid/widget/TextView;

    invoke-virtual {v2, p3, v3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_1
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;->tvLoginIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->getLoginIconBtText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;->tvLoginIcon:Landroid/widget/TextView;

    new-instance v2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$1;-><init>(Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;Lcom/ghomesdk/gameplus/login/model/LoginIconModel;)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez p1, :cond_2

    .line 88
    iget-object p1, p2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter$LoginIconViewHolder;->divider:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-object v0
.end method
