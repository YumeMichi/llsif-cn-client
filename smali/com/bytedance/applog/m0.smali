.class public Lcom/bytedance/applog/m0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final h:[[J


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/bytedance/applog/x;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [[J

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/applog/m0;->h:[[J

    return-void

    :array_0
    .array-data 8
        0x1d4c0
        0x0
        0xc
    .end array-data

    :array_1
    .array-data 8
        0x1d4c0
        0x5
        0x1
    .end array-data

    :array_2
    .array-data 8
        0x3a980
        0x5
        0x1
    .end array-data

    :array_3
    .array-data 8
        0x75300
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 8
        0xea600
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/applog/x;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/applog/m0;->b:Lcom/bytedance/applog/x;

    iput-object p1, p0, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/bytedance/applog/m0;->c:I

    iget-object p2, p0, Lcom/bytedance/applog/m0;->b:Lcom/bytedance/applog/x;

    .line 2
    iget-object p2, p2, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    const-string v2, "downgrade_time"

    invoke-static {v0, v1, v2}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-interface {p2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string p2, "downgrade_index"

    const-wide/32 v0, 0xa4cb80

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    iget-object v0, p0, Lcom/bytedance/applog/m0;->b:Lcom/bytedance/applog/x;

    .line 4
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/applog/m0;->c:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/m0;->b:Lcom/bytedance/applog/x;

    .line 6
    iget-object p1, p1, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/m0;->b:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isCongestionControlEnable()Z

    move-result v0

    return v0
.end method
