.class public final LF2/H;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/textfield/TextInputLayout;

.field public final e:Landroidx/appcompat/widget/AppCompatTextView;

.field public f:Ljava/lang/CharSequence;

.field public final g:Lcom/google/android/material/internal/CheckableImageButton;

.field public h:Landroid/content/res/ColorStateList;

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/view/View$OnLongClickListener;

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lk/R0;)V
    .locals 9

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LF2/H;->d:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const v5, 0x800003

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0d005f

    invoke-virtual {v2, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v2, p0, LF2/H;->g:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, LA2/d;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    iget-object v6, p0, LF2/H;->j:Landroid/view/View$OnLongClickListener;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v6}, LF2/x;->c(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iput-object v7, p0, LF2/H;->j:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v2, v7}, LF2/x;->c(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    const/16 v6, 0x3e

    invoke-virtual {p2, v6}, Lk/R0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p2, v6}, LA2/d;->b(Landroid/content/Context;Lk/R0;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, LF2/H;->h:Landroid/content/res/ColorStateList;

    :cond_1
    const/16 v6, 0x3f

    invoke-virtual {p2, v6}, Lk/R0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2, v6, v4}, Lk/R0;->h(II)I

    move-result v4

    invoke-static {v4, v7}, Lx2/w;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, LF2/H;->i:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    const/16 v4, 0x3d

    invoke-virtual {p2, v4}, Lk/R0;->l(I)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    invoke-virtual {p2, v4}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk/G;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_5

    iget-object v4, p0, LF2/H;->h:Landroid/content/res/ColorStateList;

    iget-object v6, p0, LF2/H;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v2, v4, v6}, LF2/x;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v8

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    if-eq v4, v8, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, LF2/H;->a()V

    invoke-virtual {p0}, LF2/H;->b()V

    :cond_4
    iget-object v4, p0, LF2/H;->h:Landroid/content/res/ColorStateList;

    invoke-static {p1, v2, v4}, LF2/x;->b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    move p1, v8

    goto :goto_1

    :cond_6
    move p1, v1

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, LF2/H;->a()V

    invoke-virtual {p0}, LF2/H;->b()V

    :cond_7
    iget-object p1, p0, LF2/H;->j:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, p1}, LF2/x;->c(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iput-object v7, p0, LF2/H;->j:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v2, v7}, LF2/x;->c(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    const/16 p1, 0x3c

    invoke-virtual {p2, p1}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p2, p1}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eq v4, p1, :cond_9

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    const/16 p1, 0x3b

    invoke-virtual {p2, p1, v8}, Lk/R0;->a(IZ)Z

    move-result p1

    iget-boolean v4, v2, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eq v4, p1, :cond_a

    iput-boolean p1, v2, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V

    :cond_a
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a0388

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setId(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v5, v8}, Landroidx/core/view/A;->e(Landroid/view/View;I)V

    const/16 p1, 0x37

    invoke-virtual {p2, p1, v1}, Lk/R0;->i(II)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/16 p1, 0x38

    invoke-virtual {p2, p1}, Lk/R0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_b
    const/16 p1, 0x36

    invoke-virtual {p2, p1}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    move-object v7, p1

    :goto_3
    iput-object v7, p0, LF2/H;->f:Ljava/lang/CharSequence;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, LF2/H;->b()V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LF2/H;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LF2/H;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/y;->e(Landroid/view/View;)I

    move-result v2

    :goto_1
    iget-object v1, p0, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f07031a

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v0

    sget-object v4, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v2, v3, p0, v0}, Landroidx/core/view/y;->h(Landroid/view/View;IIII)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, LF2/H;->f:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LF2/H;->k:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, LF2/H;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, LF2/H;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, LF2/H;->a()V

    return-void
.end method
