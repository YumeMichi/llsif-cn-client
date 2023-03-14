.class public final Lcom/sina/weibo/sdk/net/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public i:Ljava/lang/String;

.field j:Landroid/os/Bundle;

.field k:Landroid/os/Bundle;

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field n:I

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e$a;->j:Landroid/os/Bundle;

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e$a;->k:Landroid/os/Bundle;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e$a;->l:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/e$a;->m:Ljava/util/Map;

    const/16 v0, 0x7530

    .line 79
    iput v0, p0, Lcom/sina/weibo/sdk/net/e$a;->n:I

    const v0, 0xea60

    .line 80
    iput v0, p0, Lcom/sina/weibo/sdk/net/e$a;->o:I

    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_b

    .line 128
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 131
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 132
    :cond_1
    instance-of v0, p3, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 133
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-void

    .line 134
    :cond_2
    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 135
    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-void

    .line 136
    :cond_3
    instance-of v0, p3, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 137
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-void

    .line 138
    :cond_4
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 139
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 140
    :cond_5
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 141
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    .line 142
    :cond_6
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 143
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 144
    :cond_7
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 145
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 146
    :cond_8
    instance-of v0, p3, [B

    if-eqz v0, :cond_9

    .line 147
    iget-object p1, p0, Lcom/sina/weibo/sdk/net/e$a;->m:Ljava/util/Map;

    check-cast p3, [B

    check-cast p3, [B

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 148
    :cond_9
    instance-of v0, p3, Ljava/io/Serializable;

    if-eqz v0, :cond_a

    .line 149
    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    .line 151
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported params type!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e$a;->j:Landroid/os/Bundle;

    invoke-direct {p0, v0, p1, p2}, Lcom/sina/weibo/sdk/net/e$a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/e$a;->k:Landroid/os/Bundle;

    invoke-direct {p0, v0, p1, p2}, Lcom/sina/weibo/sdk/net/e$a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e()Lcom/sina/weibo/sdk/net/e;
    .locals 1

    .line 164
    new-instance v0, Lcom/sina/weibo/sdk/net/e;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/net/e;-><init>(Lcom/sina/weibo/sdk/net/e$a;)V

    return-object v0
.end method
