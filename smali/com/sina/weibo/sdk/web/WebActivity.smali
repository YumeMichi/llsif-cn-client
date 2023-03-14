.class public Lcom/sina/weibo/sdk/web/WebActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/web/a;


# instance fields
.field private am:Landroid/widget/LinearLayout;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/webkit/WebView;

.field private aq:Landroid/widget/ProgressBar;

.field private ar:Lcom/sina/weibo/sdk/web/b/b;

.field private as:Lcom/sina/weibo/sdk/web/a/b;

.field private at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/web/WebActivity;)Lcom/sina/weibo/sdk/web/b/b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    return-object p0
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 276
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/web/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/web/WebActivity;)Lcom/sina/weibo/sdk/web/a/b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    return-object p0
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/web/WebActivity;)V
    .locals 2

    .line 2248
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2249
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/web/WebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private static j(Ljava/lang/String;)Z
    .locals 2

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "https://service.weibo.com/share/mobilesdk.php"

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://open.weibo.cn/oauth2/authorize?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method static synthetic k(Ljava/lang/String;)Z
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1139
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 1140
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1142
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1144
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    .line 1145
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const-string v3, "\u5173\u95ed"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1147
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const/16 v3, -0x7e00

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1148
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    new-instance v3, Lcom/sina/weibo/sdk/web/WebActivity$2;

    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/web/WebActivity$2;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    .line 1156
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1157
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    const v3, -0xadadae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1158
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1159
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xf

    .line 1160
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1161
    iget-object v5, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    const/16 v6, 0xa

    invoke-static {v6, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    invoke-static {v6, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0xd

    .line 1162
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1163
    iget-object v6, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x37

    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v6

    invoke-direct {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1167
    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 1170
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1171
    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1172
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    .line 1175
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x3

    invoke-static {v2, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v6

    invoke-direct {v1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1176
    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1177
    iget-object v6, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1179
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1180
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "drawable"

    const-string v10, "weibosdk_common_shadow_top"

    invoke-virtual {v6, v10, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1181
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v2, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    invoke-direct {v6, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1182
    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v4

    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1183
    invoke-virtual {p1, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 1186
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1187
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1188
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "weibosdk_empty_failed"

    invoke-virtual {v6, v10, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1189
    iget-object v6, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1191
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 1192
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v6, -0x424243

    .line 1193
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1194
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x12

    .line 1195
    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v7, 0x14

    .line 1196
    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1197
    iget-object v7, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    .line 1198
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 1201
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextSize(F)V

    const v6, -0x878788

    .line 1202
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 1203
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x8e

    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v7

    const/16 v10, 0x2e

    invoke-static {v10, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    move-result v10

    invoke-direct {v6, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 1204
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1205
    iget-object v7, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "retry_btn_selector"

    invoke-virtual {v6, v10, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v6, "\u91cd\u65b0\u52a0\u8f7d"

    .line 1207
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    new-instance v6, Lcom/sina/weibo/sdk/web/WebActivity$3;

    invoke-direct {v6, p0}, Lcom/sina/weibo/sdk/web/WebActivity$3;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1217
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1218
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1221
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    new-instance v3, Lcom/sina/weibo/sdk/web/WebActivity$4;

    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/web/WebActivity$4;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/WebActivity;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->finish()V

    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->finish()V

    return-void

    :cond_2
    const-string v3, "web_type"

    .line 74
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->finish()V

    return-void

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v4, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 91
    :cond_4
    new-instance p1, Lcom/sina/weibo/sdk/web/b/c;

    invoke-direct {p1}, Lcom/sina/weibo/sdk/web/b/c;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 92
    new-instance p1, Lcom/sina/weibo/sdk/web/a/c;

    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-direct {p1, p0, v2}, Lcom/sina/weibo/sdk/web/a/c;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;Lcom/sina/weibo/sdk/web/b/b;)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    goto :goto_0

    :cond_5
    const-string p1, "\u5fae\u535a\u767b\u5f55"

    .line 86
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    .line 87
    new-instance p1, Lcom/sina/weibo/sdk/web/b/a;

    invoke-direct {p1}, Lcom/sina/weibo/sdk/web/b/a;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 88
    new-instance p1, Lcom/sina/weibo/sdk/web/a/a;

    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-direct {p1, p0, p0, v2}, Lcom/sina/weibo/sdk/web/a/a;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    goto :goto_0

    :cond_6
    const-string p1, "\u5fae\u535a\u5206\u4eab"

    .line 81
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    .line 82
    new-instance p1, Lcom/sina/weibo/sdk/web/b/d;

    invoke-direct {p1, p0}, Lcom/sina/weibo/sdk/web/b/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 83
    new-instance p1, Lcom/sina/weibo/sdk/web/a/d;

    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-direct {p1, p0, p0, v2}, Lcom/sina/weibo/sdk/web/a/d;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {p1, v1}, Lcom/sina/weibo/sdk/web/b/b;->readFromBundle(Landroid/os/Bundle;)V

    .line 1253
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 1254
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1255
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 1256
    invoke-static {}, Lcom/sina/weibo/sdk/b/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1258
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1259
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 1260
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_7

    .line 1262
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 1264
    :cond_7
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1265
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v1, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1266
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1267
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const-string v2, "accessibility"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1268
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const-string v2, "accessibilityTraversal"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_8

    .line 1270
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 99
    :cond_8
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->t()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 100
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    new-instance v0, Lcom/sina/weibo/sdk/web/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/web/WebActivity$1;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/web/b/b;->a(Lcom/sina/weibo/sdk/web/b/b$a;)V

    goto :goto_1

    .line 115
    :cond_9
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/sina/weibo/sdk/web/WebActivity;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 117
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 121
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/a/b;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    .line 315
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 2

    .line 2243
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2244
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final q()V
    .locals 0

    .line 300
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->finish()V

    return-void
.end method
