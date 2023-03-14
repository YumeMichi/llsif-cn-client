.class Lcom/reyun/tracking/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/reyun/tracking/b/a;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tete"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ASUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    iget-object v8, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v1, Lcom/reyun/tracking/b/h;->a:[Ljava/lang/String;

    aget-object v9, v1, v7

    sget-object v1, Lcom/reyun/tracking/b/h;->a:[Ljava/lang/String;

    aget-object v10, v1, v6

    sget-object v1, Lcom/reyun/tracking/b/h;->a:[Ljava/lang/String;

    aget-object v11, v1, v5

    sget-object v1, Lcom/reyun/tracking/b/h;->a:[Ljava/lang/String;

    aget-object v12, v1, v4

    sget-object v1, Lcom/reyun/tracking/b/h;->a:[Ljava/lang/String;

    aget-object v13, v1, v3

    const/4 v14, 0x3

    invoke-virtual/range {v8 .. v14}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_0
    const-string v2, "HUAWEI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v8, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v1, Lcom/reyun/tracking/b/h;->b:[Ljava/lang/String;

    aget-object v9, v1, v7

    sget-object v1, Lcom/reyun/tracking/b/h;->b:[Ljava/lang/String;

    aget-object v10, v1, v6

    sget-object v1, Lcom/reyun/tracking/b/h;->b:[Ljava/lang/String;

    aget-object v11, v1, v7

    sget-object v1, Lcom/reyun/tracking/b/h;->b:[Ljava/lang/String;

    aget-object v12, v1, v5

    :goto_0
    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_1
    const-string v2, "LENOVO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "MOTOLORA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v2, "MEIZU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v2, Lcom/reyun/tracking/b/h;->d:[Ljava/lang/String;

    aget-object v2, v2, v7

    sget-object v3, Lcom/reyun/tracking/b/h;->d:[Ljava/lang/String;

    aget-object v3, v3, v6

    sget-object v4, Lcom/reyun/tracking/b/h;->d:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    const-string v2, "NUBIA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v2, Lcom/reyun/tracking/b/h;->e:[Ljava/lang/String;

    aget-object v2, v2, v7

    sget-object v3, Lcom/reyun/tracking/b/h;->e:[Ljava/lang/String;

    aget-object v3, v3, v6

    sget-object v4, Lcom/reyun/tracking/b/h;->e:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/reyun/tracking/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v2, "OPPO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "ONEPLUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "REALME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v2, "SAMSUNG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v2, Lcom/reyun/tracking/b/h;->g:[Ljava/lang/String;

    aget-object v2, v2, v7

    sget-object v3, Lcom/reyun/tracking/b/h;->g:[Ljava/lang/String;

    aget-object v3, v3, v6

    sget-object v4, Lcom/reyun/tracking/b/h;->g:[Ljava/lang/String;

    aget-object v4, v4, v5

    goto/16 :goto_5

    :cond_6
    const-string v2, "VIVO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v2, Lcom/reyun/tracking/b/h;->h:[Ljava/lang/String;

    aget-object v2, v2, v7

    const-string v3, ""

    invoke-virtual {v1, v3, v2, v3}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    const-string v2, "XIAOMI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "BLACKSHARK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const-string v2, "ZTE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "FERRMEOS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v8, Lcom/reyun/tracking/b/h;->l:[Ljava/lang/String;

    aget-object v8, v8, v7

    sget-object v9, Lcom/reyun/tracking/b/h;->l:[Ljava/lang/String;

    aget-object v9, v9, v6

    sget-object v10, Lcom/reyun/tracking/b/h;->l:[Ljava/lang/String;

    aget-object v10, v10, v5

    sget-object v11, Lcom/reyun/tracking/b/h;->l:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    const-string v2, "GOOGLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v8, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v1, Lcom/reyun/tracking/b/h;->k:[Ljava/lang/String;

    aget-object v9, v1, v7

    sget-object v1, Lcom/reyun/tracking/b/h;->k:[Ljava/lang/String;

    aget-object v10, v1, v6

    sget-object v1, Lcom/reyun/tracking/b/h;->k:[Ljava/lang/String;

    aget-object v11, v1, v5

    sget-object v1, Lcom/reyun/tracking/b/h;->k:[Ljava/lang/String;

    aget-object v12, v1, v4

    goto/16 :goto_0

    :cond_a
    :goto_1
    iget-object v14, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v1, Lcom/reyun/tracking/b/h;->j:[Ljava/lang/String;

    aget-object v15, v1, v7

    sget-object v1, Lcom/reyun/tracking/b/h;->j:[Ljava/lang/String;

    aget-object v16, v1, v6

    sget-object v1, Lcom/reyun/tracking/b/h;->j:[Ljava/lang/String;

    aget-object v17, v1, v5

    sget-object v1, Lcom/reyun/tracking/b/h;->j:[Ljava/lang/String;

    aget-object v18, v1, v4

    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v1}, Lcom/reyun/tracking/b/a;->a(Lcom/reyun/tracking/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    sget-object v1, Lcom/reyun/tracking/b/h;->j:[Ljava/lang/String;

    aget-object v20, v1, v3

    const/16 v21, 0x3

    invoke-virtual/range {v14 .. v21}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    :cond_b
    :goto_2
    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v2, Lcom/reyun/tracking/b/h;->i:[Ljava/lang/String;

    aget-object v2, v2, v7

    sget-object v3, Lcom/reyun/tracking/b/h;->i:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v4, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v4}, Lcom/reyun/tracking/b/a;->a(Lcom/reyun/tracking/b/a;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    :goto_3
    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v1}, Lcom/reyun/tracking/b/a;->a(Lcom/reyun/tracking/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/reyun/tracking/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    iget-object v8, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v1, Lcom/reyun/tracking/b/h;->f:[Ljava/lang/String;

    aget-object v9, v1, v7

    sget-object v1, Lcom/reyun/tracking/b/h;->f:[Ljava/lang/String;

    aget-object v10, v1, v6

    sget-object v1, Lcom/reyun/tracking/b/h;->f:[Ljava/lang/String;

    aget-object v11, v1, v7

    sget-object v1, Lcom/reyun/tracking/b/h;->f:[Ljava/lang/String;

    aget-object v12, v1, v5

    sget-object v1, Lcom/reyun/tracking/b/h;->f:[Ljava/lang/String;

    aget-object v14, v1, v4

    sget-object v1, Lcom/reyun/tracking/b/h;->f:[Ljava/lang/String;

    aget-object v15, v1, v3

    const/16 v16, 0x1

    invoke-virtual/range {v8 .. v16}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    sget-object v2, Lcom/reyun/tracking/b/h;->c:[Ljava/lang/String;

    aget-object v2, v2, v7

    sget-object v3, Lcom/reyun/tracking/b/h;->c:[Ljava/lang/String;

    aget-object v3, v3, v6

    sget-object v4, Lcom/reyun/tracking/b/h;->c:[Ljava/lang/String;

    aget-object v4, v4, v5

    :goto_5
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/reyun/tracking/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e
    :goto_6
    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v1}, Lcom/reyun/tracking/b/a;->b(Lcom/reyun/tracking/b/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v1}, Lcom/reyun/tracking/b/a;->b(Lcom/reyun/tracking/b/a;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_f
    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    const-string v2, "unknown"

    invoke-static {v1, v2}, Lcom/reyun/tracking/b/a;->a(Lcom/reyun/tracking/b/a;Ljava/lang/String;)Ljava/lang/String;

    const/4 v6, 0x0

    :cond_10
    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v1}, Lcom/reyun/tracking/b/a;->a(Lcom/reyun/tracking/b/a;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v3}, Lcom/reyun/tracking/b/a;->a(Lcom/reyun/tracking/b/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "oaid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v3}, Lcom/reyun/tracking/b/a;->b(Lcom/reyun/tracking/b/a;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "devid"

    invoke-static {v1, v2, v4, v3}, Lcom/reyun/tracking/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v1}, Lcom/reyun/tracking/b/a;->c(Lcom/reyun/tracking/b/a;)Lcom/reyun/tracking/b/c;

    move-result-object v1

    iget-object v2, v0, Lcom/reyun/tracking/b/b;->a:Lcom/reyun/tracking/b/a;

    invoke-static {v2}, Lcom/reyun/tracking/b/a;->b(Lcom/reyun/tracking/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Lcom/reyun/tracking/b/c;->a(Ljava/lang/String;Z)V

    return-void
.end method
