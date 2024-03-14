.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final d:Lcom/google/android/material/chip/Chip;

.field public final e:Lcom/google/android/material/chip/Chip;

.field public final f:Lcom/google/android/material/timepicker/ClockHandView;

.field public final g:Lcom/google/android/material/timepicker/ClockFaceView;

.field public final h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field public final i:Lcom/google/android/material/timepicker/y;

.field public j:Lcom/google/android/material/timepicker/C;

.field public k:Lcom/google/android/material/timepicker/D;

.field public l:Lcom/google/android/material/timepicker/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/google/android/material/timepicker/y;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/y;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->i:Lcom/google/android/material/timepicker/y;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d009d

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a020a

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->g:Lcom/google/android/material/timepicker/ClockFaceView;

    const p1, 0x7f0a020e

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 8
    new-instance p3, Lcom/google/android/material/timepicker/x;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/x;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 9
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    .line 10
    invoke-virtual {p1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a0213

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->d:Lcom/google/android/material/chip/Chip;

    const p3, 0x7f0a0210

    .line 12
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/chip/Chip;

    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerView;->e:Lcom/google/android/material/chip/Chip;

    const v0, 0x7f0a020b

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->f:Lcom/google/android/material/timepicker/ClockHandView;

    .line 14
    new-instance v0, Landroid/view/GestureDetector;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/timepicker/z;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/z;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 16
    new-instance p0, Lcom/google/android/material/timepicker/A;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/A;-><init>(Landroid/view/GestureDetector;)V

    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    invoke-virtual {p3, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 p0, 0xc

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const v0, 0x7f0a02f1

    invoke-virtual {p1, v0, p0}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const/16 p0, 0xa

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "android.view.View"

    .line 23
    iput-object p0, p1, Lcom/google/android/material/chip/Chip;->s:Ljava/lang/CharSequence;

    .line 24
    iput-object p0, p3, Lcom/google/android/material/chip/Chip;->s:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->r()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->r()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroidx/constraintlayout/widget/q;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/q;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/q;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    iget-object v1, v0, Landroidx/constraintlayout/widget/q;->c:Ljava/util/HashMap;

    const v4, 0x7f0a0209

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/l;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    iget-object v1, v1, Landroidx/constraintlayout/widget/l;->d:Landroidx/constraintlayout/widget/m;

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown constraint"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/m;->B:F

    iput v5, v1, Landroidx/constraintlayout/widget/m;->A:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->z:I

    goto :goto_1

    :pswitch_1
    iput v5, v1, Landroidx/constraintlayout/widget/m;->u:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->v:I

    iput v3, v1, Landroidx/constraintlayout/widget/m;->J:I

    iput v4, v1, Landroidx/constraintlayout/widget/m;->Q:I

    goto :goto_1

    :pswitch_2
    iput v5, v1, Landroidx/constraintlayout/widget/m;->s:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->t:I

    iput v3, v1, Landroidx/constraintlayout/widget/m;->K:I

    iput v4, v1, Landroidx/constraintlayout/widget/m;->R:I

    goto :goto_1

    :pswitch_3
    iput v5, v1, Landroidx/constraintlayout/widget/m;->p:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->q:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->r:I

    iput v3, v1, Landroidx/constraintlayout/widget/m;->L:I

    iput v4, v1, Landroidx/constraintlayout/widget/m;->S:I

    goto :goto_1

    :pswitch_4
    iput v5, v1, Landroidx/constraintlayout/widget/m;->n:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->o:I

    iput v3, v1, Landroidx/constraintlayout/widget/m;->I:I

    iput v4, v1, Landroidx/constraintlayout/widget/m;->P:I

    goto :goto_1

    :pswitch_5
    iput v5, v1, Landroidx/constraintlayout/widget/m;->m:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->l:I

    iput v3, v1, Landroidx/constraintlayout/widget/m;->H:I

    iput v4, v1, Landroidx/constraintlayout/widget/m;->N:I

    goto :goto_1

    :pswitch_6
    iput v5, v1, Landroidx/constraintlayout/widget/m;->k:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->j:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->G:I

    iput v4, v1, Landroidx/constraintlayout/widget/m;->O:I

    goto :goto_1

    :pswitch_7
    iput v5, v1, Landroidx/constraintlayout/widget/m;->i:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->h:I

    iput v5, v1, Landroidx/constraintlayout/widget/m;->F:I

    iput v4, v1, Landroidx/constraintlayout/widget/m;->M:I

    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/q;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
