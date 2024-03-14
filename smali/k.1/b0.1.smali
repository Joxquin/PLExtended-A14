.class public final Lk/b0;
.super Landroid/widget/Spinner;
.source "SourceFile"


# static fields
.field public static final l:[I


# instance fields
.field public final d:Lk/t;

.field public final e:Landroid/content/Context;

.field public final f:Lk/Q;

.field public g:Landroid/widget/SpinnerAdapter;

.field public final h:Z

.field public final i:Lk/a0;

.field public j:I

.field public final k:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10102f1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lk/b0;->l:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const v0, 0x7f040503

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lk/b0;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    sget-object v1, Ld/a;->u:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    new-instance v4, Lk/t;

    invoke-direct {v4, p0}, Lk/t;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lk/b0;->d:Lk/t;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Li/d;

    invoke-direct {v5, v4, p1}, Li/d;-><init>(ILandroid/content/Context;)V

    iput-object v5, p0, Lk/b0;->e:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lk/b0;->e:Landroid/content/Context;

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lk/b0;->l:[I

    invoke-virtual {p1, p2, v6, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto/16 :goto_4

    :catch_0
    move-exception v7

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    :goto_1
    :try_start_2
    const-string v8, "AppCompatSpinner"

    const-string v9, "Could not read android:spinnerMode"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    :cond_1
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v4, Lk/X;

    iget-object v8, p0, Lk/b0;->e:Landroid/content/Context;

    invoke-direct {v4, p0, v8, p2}, Lk/X;-><init>(Lk/b0;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v8, p0, Lk/b0;->e:Landroid/content/Context;

    invoke-static {v8, p2, v1, v0}, Lk/R0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lk/R0;

    move-result-object v1

    iget-object v8, v1, Lk/R0;->b:Landroid/content/res/TypedArray;

    const/4 v9, 0x3

    const/4 v10, -0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    iput v8, p0, Lk/b0;->j:I

    invoke-virtual {v1, v7}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Lk/C0;->g(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lk/X;->D:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lk/R0;->n()V

    iput-object v4, p0, Lk/b0;->i:Lk/a0;

    new-instance v1, Lk/Q;

    invoke-direct {v1, p0, p0, v4}, Lk/Q;-><init>(Lk/b0;Landroid/view/View;Lk/X;)V

    iput-object v1, p0, Lk/b0;->f:Lk/Q;

    goto :goto_3

    :cond_4
    new-instance v1, Lk/T;

    invoke-direct {v1, p0}, Lk/T;-><init>(Lk/b0;)V

    iput-object v1, p0, Lk/b0;->i:Lk/a0;

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk/T;->f:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v2, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x7f0d0125

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v2}, Lk/b0;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v7, p0, Lk/b0;->h:Z

    iget-object p1, p0, Lk/b0;->g:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lk/b0;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v5, p0, Lk/b0;->g:Landroid/widget/SpinnerAdapter;

    :cond_6
    iget-object p0, p0, Lk/b0;->d:Lk/t;

    invoke-virtual {p0, p2, v0}, Lk/t;->d(Landroid/util/AttributeSet;I)V

    return-void

    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    throw p0
.end method


# virtual methods
.method public final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    move v3, v0

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    :cond_1
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lk/b0;->k:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lk/b0;->k:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    add-int/2addr v3, p1

    :cond_4
    return v3
.end method

.method public final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    iget-object p0, p0, Lk/b0;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->a()V

    :cond_0
    return-void
.end method

.method public final getDropDownHorizontalOffset()I
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/a0;->a()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result p0

    return p0
.end method

.method public final getDropDownVerticalOffset()I
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/a0;->m()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result p0

    return p0
.end method

.method public final getDropDownWidth()I
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    iget p0, p0, Lk/b0;->j:I

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result p0

    return p0
.end method

.method public final getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/a0;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getPopupContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lk/b0;->e:Landroid/content/Context;

    return-object p0
.end method

.method public final getPrompt()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/a0;->n()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk/b0;->i:Lk/a0;

    invoke-interface {p0}, Lk/a0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Lk/b0;->i:Lk/a0;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lk/b0;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lk/Z;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lk/Z;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lk/S;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lk/S;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lk/Z;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/Z;-><init>(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lk/b0;->i:Lk/a0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lk/a0;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lk/Z;->d:Z

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lk/b0;->f:Lk/Q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lk/u0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final performClick()Z
    .locals 2

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lk/a0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lk/a0;->l(II)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lk/b0;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lk/b0;->h:Z

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lk/b0;->g:Landroid/widget/SpinnerAdapter;

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lk/b0;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    :cond_1
    iget-object p0, p0, Lk/b0;->i:Lk/a0;

    new-instance v1, Lk/U;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lk/U;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {p0, v1}, Lk/a0;->o(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/b0;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/b0;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->f(I)V

    :cond_0
    return-void
.end method

.method public final setDropDownHorizontalOffset(I)V
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/a0;->i(I)V

    iget-object p0, p0, Lk/b0;->i:Lk/a0;

    invoke-interface {p0, p1}, Lk/a0;->k(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :goto_0
    return-void
.end method

.method public final setDropDownVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/a0;->h(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :goto_0
    return-void
.end method

.method public final setDropDownWidth(I)V
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    iput p1, p0, Lk/b0;->j:I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_0
    return-void
.end method

.method public final setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/a0;->g(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setPopupBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lk/b0;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b0;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lk/b0;->i:Lk/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/a0;->f(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
