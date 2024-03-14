.class public final LF2/v;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/textfield/TextInputLayout;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Lcom/google/android/material/internal/CheckableImageButton;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public final i:Lcom/google/android/material/internal/CheckableImageButton;

.field public final j:LF2/u;

.field public k:I

.field public final l:Ljava/util/LinkedHashSet;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/graphics/PorterDuff$Mode;

.field public o:Landroid/view/View$OnLongClickListener;

.field public p:Ljava/lang/CharSequence;

.field public final q:Landroidx/appcompat/widget/AppCompatTextView;

.field public r:Z

.field public s:Landroid/widget/EditText;

.field public final t:Landroid/view/accessibility/AccessibilityManager;

.field public u:LF2/k;

.field public final v:LF2/r;

.field public final w:LF2/s;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lk/R0;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput v3, v0, LF2/v;->k:I

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, LF2/v;->l:Ljava/util/LinkedHashSet;

    new-instance v4, LF2/r;

    invoke-direct {v4, v0}, LF2/r;-><init>(LF2/v;)V

    iput-object v4, v0, LF2/v;->v:LF2/r;

    new-instance v4, LF2/s;

    invoke-direct {v4, v0}, LF2/s;-><init>(LF2/v;)V

    iput-object v4, v0, LF2/v;->w:LF2/s;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, v0, LF2/v;->t:Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    const v9, 0x800005

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, LF2/v;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0a037e

    invoke-virtual {v0, v10, v9, v0}, LF2/v;->b(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v10

    iput-object v10, v0, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    const v11, 0x7f0a037d

    invoke-virtual {v0, v11, v9, v6}, LF2/v;->b(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v9

    iput-object v9, v0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v11, LF2/u;

    invoke-direct {v11, v0, v2}, LF2/u;-><init>(LF2/v;Lk/R0;)V

    iput-object v11, v0, LF2/v;->j:LF2/u;

    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, LF2/v;->q:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v12, 0x21

    invoke-virtual {v2, v12}, Lk/R0;->l(I)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v2, v12}, LA2/d;->b(Landroid/content/Context;Lk/R0;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    iput-object v12, v0, LF2/v;->g:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 v12, 0x22

    invoke-virtual {v2, v12}, Lk/R0;->l(I)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    invoke-virtual {v2, v12, v8}, Lk/R0;->h(II)I

    move-result v12

    invoke-static {v12, v14}, Lx2/w;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    iput-object v12, v0, LF2/v;->h:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    const/16 v12, 0x20

    invoke-virtual {v2, v12}, Lk/R0;->l(I)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v2, v12}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Lk/G;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, LF2/v;->k()V

    iget-object v12, v0, LF2/v;->g:Landroid/content/res/ColorStateList;

    iget-object v13, v0, LF2/v;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v10, v12, v13}, LF2/x;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1300b0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v12, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    const/4 v12, 0x2

    invoke-static {v10, v12}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    iput-boolean v3, v10, Lcom/google/android/material/internal/CheckableImageButton;->i:Z

    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const/16 v12, 0x30

    invoke-virtual {v2, v12}, Lk/R0;->l(I)Z

    move-result v13

    if-nez v13, :cond_4

    const/16 v13, 0x1c

    invoke-virtual {v2, v13}, Lk/R0;->l(I)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v2, v13}, LA2/d;->b(Landroid/content/Context;Lk/R0;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v0, LF2/v;->m:Landroid/content/res/ColorStateList;

    :cond_3
    const/16 v13, 0x1d

    invoke-virtual {v2, v13}, Lk/R0;->l(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v2, v13, v8}, Lk/R0;->h(II)I

    move-result v13

    invoke-static {v13, v14}, Lx2/w;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v13

    iput-object v13, v0, LF2/v;->n:Landroid/graphics/PorterDuff$Mode;

    :cond_4
    const/16 v13, 0x1b

    invoke-virtual {v2, v13}, Lk/R0;->l(I)Z

    move-result v15

    const/4 v7, 0x1

    if-eqz v15, :cond_6

    invoke-virtual {v2, v13, v3}, Lk/R0;->h(II)I

    move-result v8

    invoke-virtual {v0, v8}, LF2/v;->g(I)V

    const/16 v8, 0x19

    invoke-virtual {v2, v8}, Lk/R0;->l(I)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v2, v8}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v12

    if-eq v12, v8, :cond_5

    invoke-virtual {v9, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    const/16 v8, 0x18

    invoke-virtual {v2, v8, v7}, Lk/R0;->a(IZ)Z

    move-result v8

    iget-boolean v12, v9, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eq v12, v8, :cond_9

    iput-boolean v8, v9, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    invoke-virtual {v9, v3}, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v12}, Lk/R0;->l(I)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x31

    invoke-virtual {v2, v13}, Lk/R0;->l(I)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v2, v13}, LA2/d;->b(Landroid/content/Context;Lk/R0;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v0, LF2/v;->m:Landroid/content/res/ColorStateList;

    :cond_7
    const/16 v13, 0x32

    invoke-virtual {v2, v13}, Lk/R0;->l(I)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v2, v13, v8}, Lk/R0;->h(II)I

    move-result v8

    invoke-static {v8, v14}, Lx2/w;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, LF2/v;->n:Landroid/graphics/PorterDuff$Mode;

    :cond_8
    invoke-virtual {v2, v12, v3}, Lk/R0;->a(IZ)Z

    move-result v8

    invoke-virtual {v0, v8}, LF2/v;->g(I)V

    const/16 v8, 0x2e

    invoke-virtual {v2, v8}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v12

    if-eq v12, v8, :cond_9

    invoke-virtual {v9, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0a0389

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setId(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42a00000    # 80.0f

    const/4 v12, -0x2

    invoke-direct {v5, v12, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v11, v7}, Landroidx/core/view/A;->e(Landroid/view/View;I)V

    const/16 v5, 0x41

    invoke-virtual {v2, v5, v3}, Lk/R0;->i(II)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Lk/R0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2, v3}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_a
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_b
    move-object v14, v2

    :goto_1
    iput-object v14, v0, LF2/v;->p:Ljava/lang/CharSequence;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, LF2/v;->m()V

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-eqz v2, :cond_c

    invoke-virtual {v4, v1}, LF2/s;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_c
    new-instance v1, LF2/t;

    invoke-direct {v1, v0}, LF2/t;-><init>(LF2/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LF2/v;->u:LF2/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF2/v;->t:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF2/v;->t:Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, LF2/v;->u:LF2/k;

    new-instance v1, LM/b;

    invoke-direct {v1, p0}, LM/b;-><init>(LF2/k;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public final b(ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2

    const v0, 0x7f0d005e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setId(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LA2/d;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_0
    return-object p2
.end method

.method public final c()LF2/w;
    .locals 4

    iget-object v0, p0, LF2/v;->j:LF2/u;

    iget p0, p0, LF2/v;->k:I

    iget-object v1, v0, LF2/u;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF2/w;

    if-nez v2, :cond_5

    const/4 v2, -0x1

    iget-object v3, v0, LF2/u;->b:LF2/v;

    if-eq p0, v2, :cond_4

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance v0, LF2/q;

    invoke-direct {v0, v3}, LF2/q;-><init>(LF2/v;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid end icon mode: "

    invoke-static {v1, p0}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, LF2/f;

    invoke-direct {v0, v3}, LF2/f;-><init>(LF2/v;)V

    goto :goto_0

    :cond_2
    new-instance v2, LF2/G;

    iget v0, v0, LF2/u;->d:I

    invoke-direct {v2, v3, v0}, LF2/G;-><init>(LF2/v;I)V

    goto :goto_1

    :cond_3
    new-instance v0, LF2/E;

    invoke-direct {v0, v3}, LF2/E;-><init>(LF2/v;)V

    goto :goto_0

    :cond_4
    new-instance v0, LF2/g;

    invoke-direct {v0, v3}, LF2/g;-><init>(LF2/v;)V

    :goto_0
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_5
    return-object v2
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, LF2/v;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Z)V
    .locals 4

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object v0

    invoke-virtual {v0}, LF2/w;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0}, LF2/w;->l()Z

    move-result v3

    if-eq v1, v3, :cond_0

    iget-object v3, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    xor-int/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v3, v0, LF2/q;

    if-eqz v3, :cond_1

    iget-object v3, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isActivated()Z

    move-result v3

    invoke-virtual {v0}, LF2/w;->j()Z

    move-result v0

    if-eq v3, v0, :cond_1

    xor-int/lit8 v0, v3, 0x1

    iget-object v1, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez p1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p1, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object p0, p0, LF2/v;->m:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0, p0}, LF2/x;->b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public final g(I)V
    .locals 8

    iget v0, p0, LF2/v;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object v0

    iget-object v1, p0, LF2/v;->u:LF2/k;

    if-eqz v1, :cond_1

    iget-object v2, p0, LF2/v;->t:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_1

    new-instance v3, LM/b;

    invoke-direct {v3, v1}, LM/b;-><init>(LF2/k;)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, LF2/v;->u:LF2/k;

    invoke-virtual {v0}, LF2/w;->s()V

    iput p1, p0, LF2/v;->k:I

    iget-object v0, p0, LF2/v;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF2/N;

    invoke-interface {v2}, LF2/N;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    invoke-virtual {p0, v3}, LF2/v;->h(Z)V

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object v3

    iget-object v4, p0, LF2/v;->j:LF2/u;

    iget v4, v4, LF2/u;->c:I

    if-nez v4, :cond_4

    invoke-virtual {v3}, LF2/w;->d()I

    move-result v4

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_2
    iget-object v5, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5, v4}, Lk/G;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_6

    iget-object v4, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v6, p0, LF2/v;->m:Landroid/content/res/ColorStateList;

    iget-object v7, p0, LF2/v;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5, v6, v7}, LF2/x;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v6, p0, LF2/v;->m:Landroid/content/res/ColorStateList;

    invoke-static {v4, v5, v6}, LF2/x;->b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_6
    invoke-virtual {v3}, LF2/w;->c()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_7
    iget-object v4, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eq v4, v1, :cond_8

    iget-object v4, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {v3}, LF2/w;->k()Z

    move-result v1

    iget-object v4, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v5, v4, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eq v5, v1, :cond_9

    iput-boolean v1, v4, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V

    :cond_9
    iget-object v0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    invoke-virtual {v3, v0}, LF2/w;->i(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, LF2/w;->r()V

    invoke-virtual {v3}, LF2/w;->h()LF2/k;

    move-result-object p1

    iput-object p1, p0, LF2/v;->u:LF2/k;

    invoke-virtual {p0}, LF2/v;->a()V

    invoke-virtual {v3}, LF2/w;->f()Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, LF2/v;->o:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0, v1}, LF2/x;->c(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, LF2/v;->s:Landroid/widget/EditText;

    if-eqz p1, :cond_a

    invoke-virtual {v3, p1}, LF2/w;->m(Landroid/widget/EditText;)V

    invoke-virtual {p0, v3}, LF2/v;->i(LF2/w;)V

    :cond_a
    iget-object p1, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, LF2/v;->m:Landroid/content/res/ColorStateList;

    iget-object v3, p0, LF2/v;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0, v1, v3}, LF2/x;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v2}, LF2/v;->f(Z)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current box background mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported by the end icon mode "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Z)V
    .locals 1

    invoke-virtual {p0}, LF2/v;->d()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, LF2/v;->j()V

    invoke-virtual {p0}, LF2/v;->l()V

    iget-object p0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()Z

    :cond_1
    return-void
.end method

.method public final i(LF2/w;)V
    .locals 2

    iget-object v0, p0, LF2/v;->s:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, LF2/w;->e()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LF2/v;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, LF2/w;->e()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    invoke-virtual {p1}, LF2/w;->g()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, LF2/w;->g()Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, LF2/v;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, LF2/v;->e()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, LF2/v;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LF2/v;->r:Z

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0}, LF2/v;->d()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, LF2/v;->e()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-boolean v3, v3, LF2/A;->k:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, LF2/v;->j()V

    invoke-virtual {p0}, LF2/v;->l()V

    iget v0, p0, LF2/v;->k:I

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-nez v1, :cond_3

    iget-object p0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()Z

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LF2/v;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, LF2/v;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/y;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LF2/v;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    sget-object v4, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v2, v3, v0, p0}, Landroidx/core/view/y;->h(Landroid/view/View;IIII)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, LF2/v;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iget-object v1, p0, LF2/v;->p:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LF2/v;->r:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object v0

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, LF2/w;->p(Z)V

    :cond_2
    invoke-virtual {p0}, LF2/v;->j()V

    iget-object v0, p0, LF2/v;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()Z

    return-void
.end method
