.class public Lcom/geetest/sdk/dialog/views/a;
.super Ljava/lang/Object;
.source "WebviewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/dialog/views/a$b;,
        Lcom/geetest/sdk/dialog/views/a$d;,
        Lcom/geetest/sdk/dialog/views/a$c;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "a"

.field public static n:I

.field public static o:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/au;

.field private c:Lcom/geetest/sdk/model/beans/b;

.field private d:Lcom/geetest/sdk/GT3ConfigBean;

.field private e:I

.field private f:I

.field private g:Lcom/geetest/sdk/f;

.field private h:I

.field private i:Lcom/geetest/sdk/dialog/views/GtWebView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    .line 53
    new-instance v0, Lcom/geetest/sdk/dialog/views/a$c;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/dialog/views/a$c;-><init>(Lcom/geetest/sdk/dialog/views/a;)V

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/geetest/sdk/au;

    invoke-direct {p1}, Lcom/geetest/sdk/au;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a;->b:Lcom/geetest/sdk/au;

    .line 56
    iput-object p2, p0, Lcom/geetest/sdk/dialog/views/a;->g:Lcom/geetest/sdk/f;

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/dialog/views/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/geetest/sdk/dialog/views/a;->h:I

    return p1
.end method

.method static synthetic a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->b:Lcom/geetest/sdk/au;

    return-object p0
.end method

.method static synthetic b(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->g:Lcom/geetest/sdk/f;

    return-object p0
.end method

.method static synthetic c(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/model/beans/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    return-object p0
.end method

.method static synthetic d(Lcom/geetest/sdk/dialog/views/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method private f()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method static synthetic f(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/GT3ConfigBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-object p0
.end method

.method private g()I
    .locals 18

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/geetest/sdk/utils/i;->a(Landroid/content/Context;)I

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/i;->b(Landroid/content/Context;)I

    move-result v2

    .line 6
    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    .line 7
    iget-object v4, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const v5, 0x43898000    # 275.0f

    invoke-static {v4, v5}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    .line 8
    iget-object v5, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v6, 0x43cd0000    # 410.0f

    invoke-static {v5, v6}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    .line 9
    iget-object v6, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v7, 0x43ae0000    # 348.0f

    invoke-static {v6, v7}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    .line 11
    sget-object v7, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widthScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    int-to-float v10, v2

    invoke-static {v9, v10}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v1, v2, :cond_0

    mul-int/lit8 v7, v1, 0x4

    .line 15
    div-int/lit8 v7, v7, 0x5

    goto :goto_0

    :cond_0
    mul-int/lit8 v7, v2, 0x4

    .line 18
    div-int/lit8 v7, v7, 0x5

    .line 21
    :goto_0
    iget-object v8, v0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v8}, Lcom/geetest/sdk/model/beans/b;->o()Ljava/lang/String;

    move-result-object v8

    const-string v9, "beeline"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x64

    if-nez v8, :cond_1c

    iget v8, v0, Lcom/geetest/sdk/dialog/views/a;->h:I

    const/16 v10, 0x3c

    if-gt v8, v10, :cond_1

    goto/16 :goto_10

    :cond_1
    if-lt v8, v9, :cond_16

    .line 27
    iget-object v8, v0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v8}, Lcom/geetest/sdk/model/beans/b;->o()Ljava/lang/String;

    move-result-object v8

    const-string v10, "slide"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-ge v8, v10, :cond_c

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/geetest/sdk/dialog/views/a;->f()F

    move-result v3

    .line 31
    sget-object v5, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scale: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v5, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v8, 0x43520000    # 210.0f

    invoke-static {v5, v8}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    .line 33
    iget-object v8, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v10, 0x43660000    # 230.0f

    invoke-static {v8, v10}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v8

    .line 34
    iget-object v10, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v11, 0x437a0000    # 250.0f

    invoke-static {v10, v11}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v10

    .line 35
    iget-object v11, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v12, 0x43870000    # 270.0f

    invoke-static {v11, v12}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v11

    .line 36
    iget-object v12, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v13, 0x438c0000    # 280.0f

    invoke-static {v12, v13}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v12

    .line 37
    iget-object v13, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    const/high16 v14, 0x43aa0000    # 340.0f

    invoke-static {v13, v14}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v13

    float-to-double v14, v3

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    cmpg-double v3, v14, v16

    if-gtz v3, :cond_4

    if-ge v7, v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    if-le v7, v4, :cond_3

    goto :goto_4

    :cond_3
    move v4, v5

    goto :goto_4

    :cond_4
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpg-double v5, v14, v3

    if-gtz v5, :cond_7

    if-ge v7, v8, :cond_5

    goto :goto_2

    :cond_5
    move v8, v7

    :goto_2
    if-le v7, v12, :cond_6

    move v5, v12

    goto/16 :goto_a

    :cond_6
    move v4, v8

    goto :goto_4

    :cond_7
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpg-double v5, v14, v3

    if-gtz v5, :cond_a

    if-ge v7, v10, :cond_8

    move v4, v10

    goto :goto_3

    :cond_8
    move v4, v7

    :goto_3
    if-le v7, v13, :cond_9

    move v4, v13

    :cond_9
    :goto_4
    move v5, v4

    goto/16 :goto_a

    :cond_a
    if-ge v7, v11, :cond_b

    move v4, v11

    goto :goto_5

    :cond_b
    move v4, v7

    :goto_5
    if-le v7, v6, :cond_9

    move v5, v6

    goto/16 :goto_a

    :cond_c
    if-ge v1, v2, :cond_12

    .line 75
    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    int-to-float v7, v1

    invoke-static {v3, v7}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v7

    add-int/lit8 v7, v7, -0x2c

    int-to-float v7, v7

    invoke-static {v3, v7}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    .line 77
    sget-object v7, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "limitationWidth:  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v7, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v8, 0x400

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_d

    mul-int/lit8 v3, v3, 0x9

    .line 82
    div-int/lit8 v3, v3, 0xa

    .line 85
    :cond_d
    iget-object v7, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/geetest/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_10

    if-ge v3, v4, :cond_e

    goto :goto_6

    :cond_e
    move v4, v3

    :goto_6
    if-le v3, v5, :cond_f

    goto :goto_a

    :cond_f
    move v7, v4

    goto :goto_b

    :cond_10
    if-ge v3, v4, :cond_11

    move v5, v4

    goto :goto_7

    :cond_11
    move v5, v3

    :goto_7
    if-le v3, v6, :cond_14

    goto :goto_9

    :cond_12
    if-ge v7, v3, :cond_13

    move v5, v3

    goto :goto_8

    :cond_13
    move v5, v7

    :goto_8
    if-le v7, v6, :cond_14

    :goto_9
    move v7, v6

    goto :goto_b

    :cond_14
    :goto_a
    move v7, v5

    :goto_b
    if-ge v1, v2, :cond_15

    mul-int/lit8 v1, v7, 0x64

    .line 117
    iget v2, v0, Lcom/geetest/sdk/dialog/views/a;->h:I

    div-int/2addr v1, v2

    iput v1, v0, Lcom/geetest/sdk/dialog/views/a;->e:I

    .line 118
    iput v7, v0, Lcom/geetest/sdk/dialog/views/a;->f:I

    goto :goto_11

    .line 120
    :cond_15
    iput v7, v0, Lcom/geetest/sdk/dialog/views/a;->e:I

    .line 121
    iget v1, v0, Lcom/geetest/sdk/dialog/views/a;->h:I

    mul-int v1, v1, v7

    div-int/2addr v1, v9

    iput v1, v0, Lcom/geetest/sdk/dialog/views/a;->f:I

    goto :goto_11

    :cond_16
    if-ge v1, v2, :cond_19

    .line 127
    iget-object v2, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, -0x2c

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    if-ge v1, v4, :cond_17

    goto :goto_c

    :cond_17
    move v4, v1

    :goto_c
    if-le v1, v6, :cond_18

    goto :goto_e

    :cond_18
    move v7, v4

    goto :goto_f

    :cond_19
    if-ge v7, v3, :cond_1a

    goto :goto_d

    :cond_1a
    move v3, v7

    :goto_d
    if-le v7, v6, :cond_1b

    :goto_e
    move v7, v6

    goto :goto_f

    :cond_1b
    move v7, v3

    .line 148
    :goto_f
    iput v7, v0, Lcom/geetest/sdk/dialog/views/a;->e:I

    .line 149
    iget v1, v0, Lcom/geetest/sdk/dialog/views/a;->h:I

    mul-int v1, v1, v7

    div-int/2addr v1, v9

    iput v1, v0, Lcom/geetest/sdk/dialog/views/a;->f:I

    goto :goto_11

    .line 150
    :cond_1c
    :goto_10
    iput v3, v0, Lcom/geetest/sdk/dialog/views/a;->e:I

    .line 151
    iget v1, v0, Lcom/geetest/sdk/dialog/views/a;->h:I

    mul-int v3, v3, v1

    div-int/2addr v3, v9

    iput v3, v0, Lcom/geetest/sdk/dialog/views/a;->f:I

    .line 281
    :goto_11
    sget-object v1, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widthPX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v1, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widthDP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    int-to-float v4, v7

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v1, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/geetest/sdk/dialog/views/a;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v1, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWidth:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/geetest/sdk/dialog/views/a;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v1, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHeight:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/geetest/sdk/dialog/views/a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v1, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/geetest/sdk/utils/i;->b(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v1, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/geetest/sdk/utils/i;->a(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method static synthetic g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-object p0
.end method

.method static synthetic h(Lcom/geetest/sdk/dialog/views/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/a;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic i(Lcom/geetest/sdk/dialog/views/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/geetest/sdk/dialog/views/a;->h:I

    return p0
.end method


# virtual methods
.method public a()Lcom/geetest/sdk/dialog/views/GtWebView;
    .locals 9

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->l()I

    move-result v0

    iput v0, p0, Lcom/geetest/sdk/dialog/views/a;->h:I

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/h;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "&"

    const-string v2, "="

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&aspect_radio_"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/h;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    move-object v5, v4

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v3

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v3

    .line 31
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?gt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 32
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 33
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 34
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&title=&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 36
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&api_server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 38
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->i()Lcom/geetest/sdk/model/beans/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&static_servers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 39
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->i()Lcom/geetest/sdk/model/beans/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&width=100%&timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 41
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    .line 42
    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->j:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->i()Lcom/geetest/sdk/model/beans/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/g;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "https://%s/static/appweb/app3-index.html"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 54
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://static.geetest.com/static/appweb/app3-index.html"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_2
    :try_start_0
    new-instance v3, Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    .line 66
    invoke-virtual {v3}, Lcom/geetest/sdk/dialog/views/GtWebView;->a()V

    .line 68
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    if-eqz v3, :cond_7

    .line 69
    new-instance v3, Lcom/geetest/sdk/dialog/views/a$d;

    invoke-direct {v3, p0}, Lcom/geetest/sdk/dialog/views/a$d;-><init>(Lcom/geetest/sdk/dialog/views/a;)V

    iput-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->k:Ljava/lang/Runnable;

    .line 70
    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    iget-object v5, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v5}, Lcom/geetest/sdk/model/beans/b;->q()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    :cond_7
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->b:Lcom/geetest/sdk/au;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setObservable(Lcom/geetest/sdk/au;)V

    .line 74
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v3, v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->setStaticUrl(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setDataBean(Lcom/geetest/sdk/model/beans/b;)V

    .line 78
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setMyHandler(Landroid/os/Handler;)V

    .line 79
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->setRunnable(Ljava/lang/Runnable;)V

    .line 81
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->buildLayer()V

    .line 84
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    new-instance v3, Lcom/geetest/sdk/dialog/views/a$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/geetest/sdk/dialog/views/a$b;-><init>(Lcom/geetest/sdk/dialog/views/a;Lcom/geetest/sdk/dialog/views/a$a;)V

    const-string v4, "JSInterface"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/b;->q()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/geetest/sdk/dialog/views/GtWebView;->setTimeout(I)V

    .line 87
    invoke-virtual {p0}, Lcom/geetest/sdk/dialog/views/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    sget-object v3, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ed8\u8ba4webview\u5185\u6838\u4e22\u5931\uff0c\u9519\u8bef\u7801\uff1a204_3-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    :goto_3
    if-ge v1, v4, :cond_8

    aget-object v5, v3, v1

    .line 93
    sget-object v6, Lcom/geetest/sdk/dialog/views/a;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 96
    :cond_8
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    if-eqz v1, :cond_9

    .line 98
    :try_start_1
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    .line 104
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->b:Lcom/geetest/sdk/au;

    if-eqz v1, :cond_a

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webview crate error -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "204_3"

    invoke-virtual {v1, v2, v0}, Lcom/geetest/sdk/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-object v0
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-void
.end method

.method public a(Lcom/geetest/sdk/av;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->b:Lcom/geetest/sdk/au;

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/au;->a(Lcom/geetest/sdk/av;)V

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/b;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a;->c:Lcom/geetest/sdk/model/beans/b;

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "JSInterface"

    .line 3
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 10
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->destroy()V

    .line 11
    iput-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    .line 15
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iput-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->l:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 3
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        -0x40000000    # -2.0f
        -0x3f800000    # -4.0f
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        -0x40000000    # -2.0f
        -0x3f800000    # -4.0f
        -0x40000000    # -2.0f
        0x0
    .end array-data
.end method

.method public d()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/geetest/sdk/dialog/views/a;->g()I

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/geetest/sdk/dialog/views/a;->e:I

    sput v0, Lcom/geetest/sdk/dialog/views/a;->n:I

    .line 6
    iget v0, p0, Lcom/geetest/sdk/dialog/views/a;->f:I

    sput v0, Lcom/geetest/sdk/dialog/views/a;->o:I

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 9
    sget v1, Lcom/geetest/sdk/dialog/views/a;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    sget v1, Lcom/geetest/sdk/dialog/views/a;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a;->i:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
