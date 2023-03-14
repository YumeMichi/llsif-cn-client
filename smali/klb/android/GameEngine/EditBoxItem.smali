.class Lklb/android/GameEngine/EditBoxItem;
.super Ljava/lang/Object;
.source "EditBoxItem.java"


# instance fields
.field public m_Paint:Landroid/graphics/Paint;

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field private m_edit:Landroid/widget/EditText;

.field public m_enabled:Z

.field private m_gravity:I

.field private m_height:I

.field private m_hint:Ljava/lang/String;

.field private m_layout:Landroid/widget/LinearLayout;

.field private m_maxlen:I

.field private m_params:Landroid/widget/LinearLayout$LayoutParams;

.field private m_passwdmode:Z

.field public m_remove:Z

.field private m_text:Ljava/lang/String;

.field public m_update:Z

.field public m_visible:Z

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_passwdmode:Z

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    .line 25
    iput-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    iput-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    .line 32
    iput-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v2, 0x1

    .line 36
    iput-boolean v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_visible:Z

    .line 37
    iput-boolean v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_enabled:Z

    .line 38
    iput-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    .line 49
    iput-boolean p7, p0, Lklb/android/GameEngine/EditBoxItem;->m_passwdmode:Z

    .line 51
    iput-object p2, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    .line 52
    iput p3, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    .line 53
    iput p4, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    .line 54
    iput p5, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    .line 55
    iput p6, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    .line 56
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 57
    iput v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_maxlen:I

    .line 58
    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    .line 59
    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 60
    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_remove:Z

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_gravity:I

    return-void
.end method

.method static synthetic access$000(Lklb/android/GameEngine/EditBoxItem;)Lklb/android/GameEngine/GameEngineActivity;
    .locals 0

    .line 21
    iget-object p0, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    return-object p0
.end method

.method private setStatus()V
    .locals 3

    .line 92
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-boolean v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_enabled:Z

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 10

    .line 134
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    .line 138
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, -0x1

    .line 139
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x4

    const/16 v3, 0xff

    const/16 v4, 0x61

    const/16 v5, 0x9c

    .line 140
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v2, 0x40200000    # 2.5f

    .line 141
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 143
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 144
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 151
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v3, p0, Lklb/android/GameEngine/EditBoxItem;->m_hint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 152
    iget v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_maxlen:I

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/EditBoxItem;->setMaxlen(I)V

    .line 153
    iget v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_gravity:I

    if-eq v0, v1, :cond_2

    .line 154
    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 156
    :cond_2
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 157
    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    :cond_3
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 161
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    new-instance v1, Lklb/android/GameEngine/EditBoxItem$1;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/EditBoxItem$1;-><init>(Lklb/android/GameEngine/EditBoxItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 172
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 173
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    new-instance v1, Lklb/android/GameEngine/EditBoxItem$2;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/EditBoxItem$2;-><init>(Lklb/android/GameEngine/EditBoxItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_passwdmode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 187
    :cond_4
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    iget v4, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    iget v4, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    invoke-virtual {v0, v1, v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v3, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v4, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v5, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    iget v6, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    iget v7, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual/range {v4 .. v9}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    .line 193
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-direct {p0}, Lklb/android/GameEngine/EditBoxItem;->setStatus()V

    .line 196
    iput-boolean v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 76
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_created:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    return-object v0
.end method

.method public move(IIII)V
    .locals 0

    .line 67
    iput p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    .line 68
    iput p2, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    .line 69
    iput p3, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    .line 70
    iput p4, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    return-void
.end method

.method public remove()Z
    .locals 3

    .line 226
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_remove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 227
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->setImmersiveMode(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setEnable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 242
    iput-boolean p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_enabled:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 114
    iput p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_gravity:I

    .line 115
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_hint:Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMaxlen(I)V
    .locals 4

    .line 122
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    .line 124
    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 126
    :cond_0
    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    :cond_1
    :goto_0
    iput p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_maxlen:I

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    .line 237
    iput-boolean p1, p0, Lklb/android/GameEngine/EditBoxItem;->m_visible:Z

    return-void
.end method

.method public update()V
    .locals 4

    .line 200
    iget-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 206
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 208
    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    if-ge v2, v0, :cond_1

    .line 210
    iput v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    .line 214
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_params:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 215
    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 216
    iget v2, p0, Lklb/android/GameEngine/EditBoxItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/EditBoxItem;->m_y:I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 220
    invoke-direct {p0}, Lklb/android/GameEngine/EditBoxItem;->setStatus()V

    .line 221
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_text:Ljava/lang/String;

    .line 222
    iput-boolean v1, p0, Lklb/android/GameEngine/EditBoxItem;->m_update:Z

    :cond_2
    :goto_0
    return-void
.end method
