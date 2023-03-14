.class public Lcom/gbase/gameplus/upgradeutil/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;
    }
.end annotation


# static fields
.field public static allowD:Z = true

.field public static allowE:Z = true

.field public static allowI:Z = true

.field public static allowV:Z = true

.field public static allowW:Z = true

.field public static allowWtf:Z = true

.field public static customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger; = null

.field public static customTagPrefix:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 62
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 74
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1, v0, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 86
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 91
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 98
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v1, v0, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 22
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const-string p0, "%s.%s(L:%d)"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 25
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 110
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 122
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v1, v0, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .line 134
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 146
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v1, v0, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 158
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 170
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 175
    invoke-interface {v1, v0, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .line 182
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 187
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2

    .line 195
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 200
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 207
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 211
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 212
    invoke-interface {v1, v0, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2

    .line 219
    sget-boolean v0, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->customLogger:Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 224
    invoke-interface {v1, v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
