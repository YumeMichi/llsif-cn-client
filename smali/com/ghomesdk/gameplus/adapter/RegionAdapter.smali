.class public Lcom/ghomesdk/gameplus/adapter/RegionAdapter;
.super Landroid/widget/BaseAdapter;
.source "RegionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentRegionCode:Ljava/lang/String;

.field private regionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    .line 27
    iput-object p3, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->currentRegionCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

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

    .line 50
    new-instance p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;-><init>(Lcom/ghomesdk/gameplus/adapter/RegionAdapter;)V

    .line 51
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_app_theme_light"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 52
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_alphalistview_item"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_tai_first_alpha"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_head_line"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->headLineIv:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_content_line"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->contentLineIv:Landroid/widget/ImageView;

    .line 57
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_item_countrycode_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v2, "gl_item_countrycode"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->codeTextView:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    const/16 v2, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 66
    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 68
    iget-object v4, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->codeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->currentRegionCode:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v4, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->headLineIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_1
    iget-object v4, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v4, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->headLineIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v4, p1, -0x1

    if-ltz v4, :cond_3

    .line 79
    iget-object p3, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;

    :cond_3
    if-nez p3, :cond_4

    .line 81
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object p3

    const-string v1, "\u70ed"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 82
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->headLineIv:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->context:Landroid/content/Context;

    const-string v4, "gl_hot_regions"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 86
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 87
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->headLineIv:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 90
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->getCountrycodeCategoryCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 93
    :cond_5
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->headLineIv:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object p3, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->fistAlphaTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_6
    :goto_2
    iget-object p3, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter;->regionList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p1, p1, 0x1

    if-ne p3, p1, :cond_7

    .line 98
    iget-object p1, p2, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->contentLineIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-object v0
.end method
