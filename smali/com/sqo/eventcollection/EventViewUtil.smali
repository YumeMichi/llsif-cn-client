.class public Lcom/sqo/eventcollection/EventViewUtil;
.super Ljava/lang/Object;
.source "EventViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.sqo.eventcollection.EventViewUtil"

.field static moveX:F

.field static moveY:F

.field static startTime:J

.field static startX:F

.field static startY:F

.field static touchDuration:J

.field static viewPos:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/sqo/eventcollection/EventViewUtil;->viewPos:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    .line 21
    sput-wide v0, Lcom/sqo/eventcollection/EventViewUtil;->startTime:J

    const/4 v0, 0x0

    .line 23
    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->startX:F

    .line 24
    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->startY:F

    .line 25
    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->moveX:F

    .line 26
    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->moveY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 3

    .line 223
    sget-object v0, Lcom/sqo/eventcollection/EventViewUtil;->viewPos:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static getId(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    const-string v0, "no-id"

    if-nez p0, :cond_0

    return-object v0

    .line 160
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    return-object v0
.end method

.method public static getPath(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    :cond_0
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getViewType(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getViewParentType(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 182
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "]-"

    const-string v5, "["

    if-eqz v3, :cond_1

    const-string v6, "no-id"

    .line 183
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getViewParentType(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    .line 192
    :cond_3
    sget-object p0, Lcom/sqo/eventcollection/EventViewUtil;->viewPos:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ViewEventUtilTest"

    invoke-static {v1, p0}, Lcom/sqo/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getViewParentType(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getViewType(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 216
    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-nez v1, :cond_2

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static hasOnTouchListener(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "android.view.View"

    .line 276
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mListenerInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 281
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "android.view.View$ListenerInfo"

    .line 285
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mOnTouchListener"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 288
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnTouchListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v2

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method private static isClickEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 63
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    sget v0, Lcom/sqo/eventcollection/EventViewUtil;->moveX:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lcom/sqo/eventcollection/EventViewUtil;->startX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->moveX:F

    .line 73
    sget v0, Lcom/sqo/eventcollection/EventViewUtil;->moveY:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/sqo/eventcollection/EventViewUtil;->startY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->moveY:F

    .line 74
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->startX:F

    .line 75
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sput p0, Lcom/sqo/eventcollection/EventViewUtil;->startY:F

    goto :goto_1

    .line 78
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/sqo/eventcollection/EventViewUtil;->startTime:J

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/sqo/eventcollection/EventViewUtil;->touchDuration:J

    .line 79
    sget p0, Lcom/sqo/eventcollection/EventViewUtil;->moveX:F

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_3

    sget p0, Lcom/sqo/eventcollection/EventViewUtil;->moveY:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1

    .line 65
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/sqo/eventcollection/EventViewUtil;->startX:F

    .line 66
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sput p0, Lcom/sqo/eventcollection/EventViewUtil;->startY:F

    const/4 p0, 0x0

    .line 67
    sput p0, Lcom/sqo/eventcollection/EventViewUtil;->moveX:F

    .line 68
    sput p0, Lcom/sqo/eventcollection/EventViewUtil;->moveY:F

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/sqo/eventcollection/EventViewUtil;->startTime:J

    :goto_1
    return v1
.end method

.method public static isInClickView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    const/4 v2, 0x2

    .line 255
    new-array v2, v2, [I

    .line 256
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    aget v3, v2, v0

    const/4 v4, 0x1

    .line 258
    aget v2, v2, v4

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float v6, v3

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_0

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    int-to-float v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    add-int/2addr v2, p0

    int-to-float p0, v2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    return v4

    :cond_0
    return v0
.end method

.method public static report(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 3

    .line 90
    invoke-static {p1}, Lcom/sqo/eventcollection/EventViewUtil;->isClickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    .line 91
    sget-object v0, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    const-string v1, "view click report"

    invoke-static {v0, v1}, Lcom/sqo/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x1020002

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventViewUtil;->searchClickView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p0

    .line 93
    invoke-static {}, Lcom/sqo/eventcollection/EventViewUtil;->clear()V

    if-eqz p0, :cond_5

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 100
    :goto_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "current view is:"

    if-eqz v0, :cond_2

    .line 105
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getViewType(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 106
    sget-object p1, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current view doesn\'t have a content description.  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sqo/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sqo/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sqo/eventcollection/EventLog;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_2
    sget-object v0, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sqo/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->hasOnTouchListener(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventLog;->onLongClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 113
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventLog;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static report(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .line 30
    invoke-static {p1}, Lcom/sqo/eventcollection/EventViewUtil;->isClickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    .line 31
    sget-object v0, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    const-string v1, "view click report"

    invoke-static {v0, v1}, Lcom/sqo/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventViewUtil;->searchClickView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p0

    .line 33
    invoke-static {}, Lcom/sqo/eventcollection/EventViewUtil;->clear()V

    if-eqz p0, :cond_5

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 40
    :goto_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "current view is:"

    if-eqz v0, :cond_2

    .line 45
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getViewType(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 46
    sget-object p1, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current view doesn\'t have a content description.  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sqo/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object p1, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sqo/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 50
    :cond_2
    sget-object v0, Lcom/sqo/eventcollection/EventViewUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sqo/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->hasOnTouchListener(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventLog;->onLongClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->getPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventLog;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static searchClickView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 129
    :cond_0
    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventViewUtil;->isInClickView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 131
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 132
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->viewCanClick(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 135
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 136
    invoke-static {v3, p1}, Lcom/sqo/eventcollection/EventViewUtil;->searchClickView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    .line 137
    invoke-static {v3}, Lcom/sqo/eventcollection/EventViewUtil;->viewCanClick(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object p0, v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    move-object p0, v0

    :cond_5
    return-object p0
.end method

.method private static viewCanClick(Landroid/view/View;)Landroid/view/View;
    .locals 1

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sqo/eventcollection/EventViewUtil;->hasOnTouchListener(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
