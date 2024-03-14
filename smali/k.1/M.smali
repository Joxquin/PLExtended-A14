.class public Lk/M;
.super Landroid/widget/RadioButton;
.source "SourceFile"


# instance fields
.field public final d:Lk/y;

.field public final e:Lk/t;

.field public final f:Lk/e0;

.field public g:Lk/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1}, Lk/O0;->a(Landroid/content/Context;)V

    const v0, 0x7f0404a2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lk/y;

    invoke-direct {p1, p0}, Lk/y;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lk/M;->d:Lk/y;

    invoke-virtual {p1, p2, v0}, Lk/y;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/t;

    invoke-direct {p1, p0}, Lk/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/M;->e:Lk/t;

    invoke-virtual {p1, p2, v0}, Lk/t;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/e0;

    invoke-direct {p1, p0}, Lk/e0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/M;->f:Lk/e0;

    invoke-virtual {p1, p2, v0}, Lk/e0;->d(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Lk/M;->g:Lk/E;

    if-nez p1, :cond_0

    new-instance p1, Lk/E;

    invoke-direct {p1, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/M;->g:Lk/E;

    :cond_0
    iget-object p0, p0, Lk/M;->g:Lk/E;

    invoke-virtual {p0, p2, v0}, Lk/E;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    iget-object v0, p0, Lk/M;->e:Lk/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/t;->a()V

    :cond_0
    iget-object p0, p0, Lk/M;->f:Lk/e0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/e0;->b()V

    :cond_1
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lk/M;->d:Lk/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public final setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setAllCaps(Z)V

    iget-object v0, p0, Lk/M;->g:Lk/E;

    if-nez v0, :cond_0

    new-instance v0, Lk/E;

    invoke-direct {v0, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/M;->g:Lk/E;

    :cond_0
    iget-object p0, p0, Lk/M;->g:Lk/E;

    invoke-virtual {p0, p1}, Lk/E;->c(Z)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/M;->e:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/M;->e:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->f(I)V

    :cond_0
    return-void
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/M;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p0, p0, Lk/M;->d:Lk/y;

    if-eqz p0, :cond_1

    .line 3
    iget-boolean p1, p0, Lk/y;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lk/y;->f:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lk/y;->f:Z

    .line 6
    invoke-virtual {p0}, Lk/y;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/M;->f:Lk/e0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/e0;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/M;->f:Lk/e0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/e0;->b()V

    :cond_0
    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    iget-object v0, p0, Lk/M;->g:Lk/E;

    if-nez v0, :cond_0

    new-instance v0, Lk/E;

    invoke-direct {v0, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/M;->g:Lk/E;

    :cond_0
    iget-object v0, p0, Lk/M;->g:Lk/E;

    invoke-virtual {v0, p1}, Lk/E;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
