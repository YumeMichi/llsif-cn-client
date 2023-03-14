.class Lklb/android/GameEngine/WebViewItem;
.super Ljava/lang/Object;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/WebViewItem$JsObject;
    }
.end annotation


# static fields
.field private static final NATIVE_PROTOCOL:Ljava/lang/String; = "native://"

.field private static m_nonceSeed:I


# instance fields
.field public m_alpha:I

.field public m_bZoom:Z

.field public m_color:I

.field private m_consumerKey:Ljava/lang/String;

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field public m_enabled:Z

.field private m_extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_height:I

.field private m_javascript:Ljava/lang/String;

.field private m_layout:Landroid/widget/LinearLayout;

.field private m_nojump:Z

.field private m_params:Landroid/widget/LinearLayout$LayoutParams;

.field public m_reload:Z

.field public m_remove:Z

.field private m_tmpUrl:Ljava/lang/String;

.field private m_token:Ljava/lang/String;

.field public m_update:Z

.field private m_url:Ljava/lang/String;

.field public m_visible:Z

.field private m_web:Lklb/android/GameEngine/HelpWebView;

.field private m_whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p17

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    .line 30
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    .line 31
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    .line 32
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    .line 37
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    .line 38
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_consumerKey:Ljava/lang/String;

    .line 39
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_token:Ljava/lang/String;

    .line 44
    iput-object v7, v0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v7, 0x1

    .line 50
    iput-boolean v7, v0, Lklb/android/GameEngine/WebViewItem;->m_visible:Z

    .line 51
    iput-boolean v7, v0, Lklb/android/GameEngine/WebViewItem;->m_enabled:Z

    const/4 v8, 0x0

    .line 52
    iput v8, v0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    const v9, 0xffffff

    .line 53
    iput v9, v0, Lklb/android/GameEngine/WebViewItem;->m_color:I

    .line 54
    iput-boolean v7, v0, Lklb/android/GameEngine/WebViewItem;->m_bZoom:Z

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lklb/android/GameEngine/WebViewItem;->m_whiteList:Ljava/util/ArrayList;

    .line 91
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    .line 92
    iget-object v9, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v10, "API-Model"

    const-string v11, "straightforward"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 94
    iget-object v9, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v10, "Bundle-Version"

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_1

    .line 95
    iget-object v2, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v9, "Client-Version"

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    .line 96
    iget-object v2, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v3, "Region"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v4, :cond_3

    .line 97
    iget-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "Application-ID"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v5, :cond_4

    .line 98
    iget-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "User-ID"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v6, :cond_5

    .line 100
    iget-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "LANG"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5
    iget-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "OS"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "Time-Zone"

    move-object/from16 v3, p14

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "OS-Version"

    move-object/from16 v3, p15

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p11

    .line 106
    iput-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_consumerKey:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 107
    iput-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_token:Ljava/lang/String;

    move/from16 v1, p16

    .line 109
    iput-boolean v1, v0, Lklb/android/GameEngine/WebViewItem;->m_nojump:Z

    move-object v1, p2

    .line 111
    iput-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    move v1, p3

    .line 112
    iput v1, v0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    move/from16 v1, p4

    .line 113
    iput v1, v0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    move/from16 v1, p5

    .line 114
    iput v1, v0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    move/from16 v1, p6

    .line 115
    iput v1, v0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    move-object v1, p1

    .line 116
    iput-object v1, v0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 118
    iput-boolean v8, v0, Lklb/android/GameEngine/WebViewItem;->m_created:Z

    .line 119
    iput-boolean v8, v0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    .line 120
    iput-boolean v8, v0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    .line 121
    iput-boolean v7, v0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    return-void
.end method

.method static synthetic access$002(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_tmpUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;
    .locals 0

    .line 28
    iget-object p0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    return-object p0
.end method

.method static synthetic access$200(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lklb/android/GameEngine/WebViewItem;->isInWhiteList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lklb/android/GameEngine/WebViewItem;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->setStatus()V

    return-void
.end method

.method static synthetic access$500(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->authHeader()V

    return-void
.end method

.method static synthetic access$600(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    return-object p1
.end method

.method private authHeader()V
    .locals 4

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumerKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem;->m_consumerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&version=1.1&timeStamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&nonce=WV"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lklb/android/GameEngine/WebViewItem;->m_nonceSeed:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    const-string v2, "authorize"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 3

    .line 179
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_whiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_whiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private setStatus()V
    .locals 2

    .line 160
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$1;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$1;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public create()V
    .locals 9

    .line 189
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_created:Z

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v0, Lklb/android/GameEngine/HelpWebView;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Lklb/android/GameEngine/HelpWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    .line 196
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$2;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$2;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->setLongClickable(Z)V

    .line 204
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    .line 205
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    iget v0, p0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_color:I

    invoke-virtual {p0, v0, v2}, Lklb/android/GameEngine/WebViewItem;->setColor(II)V

    .line 212
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_bZoom:Z

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/WebViewItem;->setZoom(Z)V

    .line 215
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    const v2, 0x1ffffff

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 218
    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v4, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    iget v5, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    iget v6, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v8}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    .line 221
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->authHeader()V

    .line 223
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v2, Lklb/android/GameEngine/WebViewItem$3;

    invoke-direct {v2, p0}, Lklb/android/GameEngine/WebViewItem$3;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/HelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v2, Lklb/android/GameEngine/WebViewItem$4;

    invoke-direct {v2, p0}, Lklb/android/GameEngine/WebViewItem$4;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/HelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 301
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 302
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 303
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 304
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 305
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0}, Lklb/android/GameEngine/HelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 306
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/HelpWebView;->setInitialScale(I)V

    .line 308
    new-instance v0, Lklb/android/GameEngine/WebViewItem$JsObject;

    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, p0, v3}, Lklb/android/GameEngine/WebViewItem$JsObject;-><init>(Lklb/android/GameEngine/WebViewItem;Landroid/content/Context;)V

    .line 309
    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    const-string v4, "eng"

    invoke-virtual {v3, v0, v4}, Lklb/android/GameEngine/HelpWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    iget-object v4, p0, Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;

    invoke-virtual {v0, v3, v4}, Lklb/android/GameEngine/HelpWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    invoke-direct {p0}, Lklb/android/GameEngine/WebViewItem;->setStatus()V

    .line 313
    iput-boolean v1, p0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    .line 314
    iput-boolean v2, p0, Lklb/android/GameEngine/WebViewItem;->m_created:Z

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTmpText()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_tmpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEqual(Landroid/webkit/WebView;)Z
    .locals 1

    .line 411
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public move(IIII)V
    .locals 0

    .line 126
    iput p1, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    .line 127
    iput p2, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    .line 128
    iput p3, p0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    .line 129
    iput p4, p0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    return-void
.end method

.method public remove()Z
    .locals 2

    .line 360
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setColor(II)V
    .locals 0

    .line 391
    iput p1, p0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    .line 392
    iput p2, p0, Lklb/android/GameEngine/WebViewItem;->m_color:I

    .line 393
    iget-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-nez p1, :cond_0

    return-void

    .line 394
    :cond_0
    new-instance p2, Lklb/android/GameEngine/WebViewItem$7;

    invoke-direct {p2, p0}, Lklb/android/GameEngine/WebViewItem$7;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {p1, p2}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    .line 372
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_enabled:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    .line 367
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_visible:Z

    return-void
.end method

.method public setWhiteUrl(Ljava/lang/String;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_whiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setZoom(Z)V
    .locals 1

    .line 377
    iput-boolean p1, p0, Lklb/android/GameEngine/WebViewItem;->m_bZoom:Z

    .line 378
    iget-object p1, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-nez p1, :cond_0

    return-void

    .line 379
    :cond_0
    new-instance v0, Lklb/android/GameEngine/WebViewItem$6;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/WebViewItem$6;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {p1, v0}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public update()V
    .locals 4

    .line 318
    iget-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_update:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 322
    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 323
    iget v1, p0, Lklb/android/GameEngine/WebViewItem;->m_x:I

    iget v2, p0, Lklb/android/GameEngine/WebViewItem;->m_y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 325
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;

    new-instance v1, Lklb/android/GameEngine/WebViewItem$5;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/WebViewItem$5;-><init>(Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/HelpWebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
