.class public Lk/u;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field public final d:Lk/t;

.field public final e:Lk/e0;

.field public f:Lk/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lk/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400c2

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lk/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lk/O0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 5
    new-instance p1, Lk/t;

    invoke-direct {p1, p0}, Lk/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/u;->d:Lk/t;

    .line 6
    invoke-virtual {p1, p2, p3}, Lk/t;->d(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Lk/e0;

    invoke-direct {p1, p0}, Lk/e0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/u;->e:Lk/e0;

    .line 8
    invoke-virtual {p1, p2, p3}, Lk/e0;->d(Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p1}, Lk/e0;->b()V

    .line 10
    iget-object p1, p0, Lk/u;->f:Lk/E;

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lk/E;

    invoke-direct {p1, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/u;->f:Lk/E;

    .line 12
    :cond_0
    iget-object p0, p0, Lk/u;->f:Lk/E;

    .line 13
    invoke-virtual {p0, p2, p3}, Lk/E;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Lk/u;->d:Lk/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/t;->a()V

    :cond_0
    iget-object p0, p0, Lk/u;->e:Lk/e0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/e0;->b()V

    :cond_1
    return-void
.end method

.method public final getAutoSizeMaxTextSize()I
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result p0

    return p0
.end method

.method public final getAutoSizeMinTextSize()I
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result p0

    return p0
.end method

.method public final getAutoSizeStepGranularity()I
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result p0

    return p0
.end method

.method public final getAutoSizeTextAvailableSizes()[I
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object p0

    return-object p0
.end method

.method public final getAutoSizeTextType()I
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 0

    invoke-super {p0}, Landroid/widget/Button;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object p0

    invoke-static {p0}, LN/i;->b(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    iget-object p0, p0, Lk/u;->e:Lk/e0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lk/c1;->a:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p0, p0, Lk/u;->e:Lk/e0;

    if-eqz p0, :cond_0

    sget-object p0, Lk/c1;->a:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method

.method public final setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v0, p0, Lk/u;->f:Lk/E;

    if-nez v0, :cond_0

    new-instance v0, Lk/E;

    invoke-direct {v0, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/u;->f:Lk/E;

    :cond_0
    iget-object p0, p0, Lk/u;->f:Lk/E;

    invoke-virtual {p0, p1}, Lk/E;->c(Z)V

    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method public final setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/u;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/u;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->f(I)V

    :cond_0
    return-void
.end method

.method public final setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    iget-object v0, p0, Lk/u;->f:Lk/E;

    if-nez v0, :cond_0

    new-instance v0, Lk/E;

    invoke-direct {v0, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/u;->f:Lk/E;

    :cond_0
    iget-object v0, p0, Lk/u;->f:Lk/E;

    invoke-virtual {v0, p1}, Lk/E;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p0, p0, Lk/u;->e:Lk/e0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lk/e0;->e(ILandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 1

    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    return-void
.end method
