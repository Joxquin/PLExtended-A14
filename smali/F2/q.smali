.class public final LF2/q;
.super LF2/w;
.source "SourceFile"


# instance fields
.field public e:Landroid/widget/AutoCompleteTextView;

.field public final f:LF2/i;

.field public final g:LF2/j;

.field public final h:LF2/k;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:J

.field public m:Landroid/view/accessibility/AccessibilityManager;

.field public n:Landroid/animation/ValueAnimator;

.field public o:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(LF2/v;)V
    .locals 2

    invoke-direct {p0, p1}, LF2/w;-><init>(LF2/v;)V

    new-instance p1, LF2/i;

    invoke-direct {p1, p0}, LF2/i;-><init>(LF2/q;)V

    iput-object p1, p0, LF2/q;->f:LF2/i;

    new-instance p1, LF2/j;

    invoke-direct {p1, p0}, LF2/j;-><init>(LF2/q;)V

    iput-object p1, p0, LF2/q;->g:LF2/j;

    new-instance p1, LF2/k;

    invoke-direct {p1, p0}, LF2/k;-><init>(LF2/q;)V

    iput-object p1, p0, LF2/q;->h:LF2/k;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, LF2/q;->l:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LF2/q;->m:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, LF2/w;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_1
    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    new-instance v1, LF2/m;

    invoke-direct {v1, p0}, LF2/m;-><init>(LF2/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()I
    .locals 0

    const p0, 0x7f1300b2

    return p0
.end method

.method public final d()I
    .locals 0

    const p0, 0x7f0802f2

    return p0
.end method

.method public final e()Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, LF2/q;->g:LF2/j;

    return-object p0
.end method

.method public final f()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, LF2/q;->f:LF2/i;

    return-object p0
.end method

.method public final h()LF2/k;
    .locals 0

    iget-object p0, p0, LF2/q;->h:LF2/k;

    return-object p0
.end method

.method public final i(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, LF2/q;->i:Z

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, LF2/q;->k:Z

    return p0
.end method

.method public final m(Landroid/widget/EditText;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    new-instance v1, LF2/n;

    invoke-direct {v1, p0}, LF2/n;-><init>(LF2/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    new-instance v1, LF2/o;

    invoke-direct {v1, p0}, LF2/o;-><init>(LF2/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, LF2/w;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    iget-object v3, v2, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lk/G;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, LF2/v;->k()V

    iget-object v3, v2, LF2/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v4, v2, LF2/v;->f:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v5, v2, LF2/v;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, LF2/v;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5, v2}, LF2/x;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    iget-object p1, p0, LF2/q;->m:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    iget-object p0, p0, LF2/w;->d:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    :cond_1
    iget-object p0, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {p0, v2}, LF2/v;->h(Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(LM/e;)V
    .locals 0

    iget-object p0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-class p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, LM/e;->h(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p1, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final o(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LF2/q;->m:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, LF2/q;->u()V

    iput-boolean v0, p0, LF2/q;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LF2/q;->l:J

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lj2/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x43

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, LF2/l;

    invoke-direct {v3, p0}, LF2/l;-><init>(LF2/q;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, LF2/q;->o:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v1, 0x32

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, LF2/l;

    invoke-direct {v1, p0}, LF2/l;-><init>(LF2/q;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, LF2/q;->n:Landroid/animation/ValueAnimator;

    new-instance v1, LF2/p;

    invoke-direct {v1, p0}, LF2/p;-><init>(LF2/q;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, LF2/w;->c:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, LF2/q;->m:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final t(Z)V
    .locals 1

    iget-boolean v0, p0, LF2/q;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, LF2/q;->k:Z

    iget-object p1, p0, LF2/q;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, LF2/q;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 7

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LF2/q;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_2

    const-wide/16 v5, 0x12c

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v3, p0, LF2/q;->j:Z

    :cond_3
    iget-boolean v0, p0, LF2/q;->j:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, LF2/q;->k:Z

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0}, LF2/q;->t(Z)V

    iget-boolean v0, p0, LF2/q;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object p0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2

    :cond_5
    iput-boolean v3, p0, LF2/q;->j:Z

    :goto_2
    return-void
.end method
