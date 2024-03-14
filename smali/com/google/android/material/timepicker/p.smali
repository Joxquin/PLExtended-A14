.class public final Lcom/google/android/material/timepicker/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/h;
.implements Lcom/google/android/material/timepicker/D;
.implements Lcom/google/android/material/timepicker/C;
.implements Lcom/google/android/material/timepicker/g;
.implements Lcom/google/android/material/timepicker/q;


# static fields
.field public static final i:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;


# instance fields
.field public final d:Lcom/google/android/material/timepicker/TimePickerView;

.field public final e:Lcom/google/android/material/timepicker/n;

.field public f:F

.field public g:F

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "12"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "10"

    const-string v11, "11"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/p;->i:[Ljava/lang/String;

    const-string v1, "00"

    const-string v2, "2"

    const-string v3, "4"

    const-string v4, "6"

    const-string v5, "8"

    const-string v6, "10"

    const-string v7, "12"

    const-string v8, "14"

    const-string v9, "16"

    const-string v10, "18"

    const-string v11, "20"

    const-string v12, "22"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/p;->j:[Ljava/lang/String;

    const-string v1, "00"

    const-string v2, "5"

    const-string v3, "10"

    const-string v4, "15"

    const-string v5, "20"

    const-string v6, "25"

    const-string v7, "30"

    const-string v8, "35"

    const-string v9, "40"

    const-string v10, "45"

    const-string v11, "50"

    const-string v12, "55"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/p;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/p;->h:Z

    iput-object p1, p0, Lcom/google/android/material/timepicker/p;->d:Lcom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/p;->e:Lcom/google/android/material/timepicker/n;

    iget p2, p2, Lcom/google/android/material/timepicker/n;->f:I

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/google/android/material/timepicker/TimePickerView;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object p2, p1, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/timepicker/ClockHandView;

    iget-object p2, p2, Lcom/google/android/material/timepicker/ClockHandView;->j:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lcom/google/android/material/timepicker/TimePickerView;->k:Lcom/google/android/material/timepicker/D;

    iput-object p0, p1, Lcom/google/android/material/timepicker/TimePickerView;->j:Lcom/google/android/material/timepicker/C;

    iget-object p1, p1, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/timepicker/ClockHandView;

    iput-object p0, p1, Lcom/google/android/material/timepicker/ClockHandView;->r:Lcom/google/android/material/timepicker/g;

    sget-object p1, Lcom/google/android/material/timepicker/p;->i:[Ljava/lang/String;

    const-string p2, "%d"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/timepicker/p;->f(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/material/timepicker/p;->j:[Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/timepicker/p;->f(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/material/timepicker/p;->k:[Ljava/lang/String;

    const-string p2, "%02d"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/timepicker/p;->f(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/p;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/timepicker/p;->e:Lcom/google/android/material/timepicker/n;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/n;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/p;->c()I

    move-result v2

    mul-int/2addr v2, v1

    int-to-float v1, v2

    iput v1, p0, Lcom/google/android/material/timepicker/p;->g:F

    iget v1, v0, Lcom/google/android/material/timepicker/n;->h:I

    mul-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/timepicker/p;->f:F

    iget v0, v0, Lcom/google/android/material/timepicker/n;->i:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/p;->d(IZ)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/p;->e()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/p;->d(IZ)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/timepicker/p;->e:Lcom/google/android/material/timepicker/n;

    iget p0, p0, Lcom/google/android/material/timepicker/n;->f:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x1e

    :goto_0
    return p0
.end method

.method public final d(IZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/timepicker/p;->d:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v5, v4, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/timepicker/ClockHandView;

    iput-boolean v3, v5, Lcom/google/android/material/timepicker/ClockHandView;->e:Z

    iget-object v5, p0, Lcom/google/android/material/timepicker/p;->e:Lcom/google/android/material/timepicker/n;

    iput p1, v5, Lcom/google/android/material/timepicker/n;->i:I

    if-eqz v3, :cond_1

    sget-object v5, Lcom/google/android/material/timepicker/p;->k:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget v5, v5, Lcom/google/android/material/timepicker/n;->f:I

    if-ne v5, v1, :cond_2

    sget-object v5, Lcom/google/android/material/timepicker/p;->j:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/google/android/material/timepicker/p;->i:[Ljava/lang/String;

    :goto_1
    if-eqz v3, :cond_3

    const v6, 0x7f13011c

    goto :goto_2

    :cond_3
    const v6, 0x7f13011a

    :goto_2
    iget-object v7, v4, Lcom/google/android/material/timepicker/TimePickerView;->g:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/material/timepicker/ClockFaceView;->t([Ljava/lang/String;I)V

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/android/material/timepicker/p;->f:F

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/google/android/material/timepicker/p;->g:F

    :goto_3
    iget-object v5, v4, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v5, v3, p2}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    iget-object p2, v4, Lcom/google/android/material/timepicker/TimePickerView;->d:Lcom/google/android/material/chip/Chip;

    if-ne p1, v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    invoke-virtual {p2, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_5

    :cond_6
    move v2, v0

    :goto_5
    sget-object v5, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p2, v2}, Landroidx/core/view/A;->e(Landroid/view/View;I)V

    iget-object p2, v4, Lcom/google/android/material/timepicker/TimePickerView;->e:Lcom/google/android/material/chip/Chip;

    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    move p1, v1

    goto :goto_6

    :cond_7
    move p1, v0

    :goto_6
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move v3, v0

    :goto_7
    invoke-static {p2, v3}, Landroidx/core/view/A;->e(Landroid/view/View;I)V

    new-instance p1, Lcom/google/android/material/timepicker/o;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f130119

    invoke-direct {p1, p0, p2, v2, v0}, Lcom/google/android/material/timepicker/o;-><init>(Lcom/google/android/material/timepicker/p;Landroid/content/Context;II)V

    iget-object p2, v4, Lcom/google/android/material/timepicker/TimePickerView;->e:Lcom/google/android/material/chip/Chip;

    invoke-static {p2, p1}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    new-instance p1, Lcom/google/android/material/timepicker/o;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f13011b

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/google/android/material/timepicker/o;-><init>(Lcom/google/android/material/timepicker/p;Landroid/content/Context;II)V

    iget-object p0, v4, Lcom/google/android/material/timepicker/TimePickerView;->d:Lcom/google/android/material/chip/Chip;

    invoke-static {p0, p1}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/timepicker/p;->e:Lcom/google/android/material/timepicker/n;

    iget v1, v0, Lcom/google/android/material/timepicker/n;->j:I

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/n;->b()I

    move-result v2

    iget v0, v0, Lcom/google/android/material/timepicker/n;->h:I

    iget-object p0, p0, Lcom/google/android/material/timepicker/p;->d:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v1, 0x7f0a020d

    goto :goto_0

    :cond_0
    const v1, 0x7f0a020c

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerView;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v4, v1, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%02d"

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerView;->d:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerView;->d:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final f(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/timepicker/p;->d:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p2, v0

    sget-object v3, Lcom/google/android/material/timepicker/n;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hide()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/timepicker/p;->d:Lcom/google/android/material/timepicker/TimePickerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final i(FZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/timepicker/p;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/p;->e:Lcom/google/android/material/timepicker/n;

    iget v1, v0, Lcom/google/android/material/timepicker/n;->g:I

    iget v2, v0, Lcom/google/android/material/timepicker/n;->h:I

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v3, v0, Lcom/google/android/material/timepicker/n;->i:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    add-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x6

    rem-int/lit8 p1, p1, 0x3c

    iput p1, v0, Lcom/google/android/material/timepicker/n;->h:I

    mul-int/lit8 p1, p1, 0x6

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Lcom/google/android/material/timepicker/p;->f:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/p;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/p;->c()I

    move-result p1

    div-int/2addr v3, p1

    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/n;->f(I)V

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/n;->b()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/p;->c()I

    move-result v3

    mul-int/2addr v3, p1

    int-to-float p1, v3

    iput p1, p0, Lcom/google/android/material/timepicker/p;->g:F

    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/p;->e()V

    iget p1, v0, Lcom/google/android/material/timepicker/n;->h:I

    if-ne p1, v2, :cond_2

    iget p1, v0, Lcom/google/android/material/timepicker/n;->g:I

    if-eq p1, v1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/timepicker/p;->d:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_3
    return-void
.end method

.method public final show()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/timepicker/p;->d:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
