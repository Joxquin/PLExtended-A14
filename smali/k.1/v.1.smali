.class public Lk/v;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# instance fields
.field public final d:Lk/y;

.field public final e:Lk/t;

.field public final f:Lk/e0;

.field public g:Lk/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lk/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400e4

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lk/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lk/O0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 5
    new-instance p1, Lk/y;

    invoke-direct {p1, p0}, Lk/y;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lk/v;->d:Lk/y;

    .line 6
    invoke-virtual {p1, p2, p3}, Lk/y;->b(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Lk/t;

    invoke-direct {p1, p0}, Lk/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/v;->e:Lk/t;

    .line 8
    invoke-virtual {p1, p2, p3}, Lk/t;->d(Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lk/e0;

    invoke-direct {p1, p0}, Lk/e0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/v;->f:Lk/e0;

    .line 10
    invoke-virtual {p1, p2, p3}, Lk/e0;->d(Landroid/util/AttributeSet;I)V

    .line 11
    iget-object p1, p0, Lk/v;->g:Lk/E;

    if-nez p1, :cond_0

    .line 12
    new-instance p1, Lk/E;

    invoke-direct {p1, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/v;->g:Lk/E;

    .line 13
    :cond_0
    iget-object p0, p0, Lk/v;->g:Lk/E;

    .line 14
    invoke-virtual {p0, p2, p3}, Lk/E;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lk/v;->e:Lk/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/t;->a()V

    :cond_0
    iget-object p0, p0, Lk/v;->f:Lk/e0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/e0;->b()V

    :cond_1
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lk/v;->d:Lk/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public final setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setAllCaps(Z)V

    iget-object v0, p0, Lk/v;->g:Lk/E;

    if-nez v0, :cond_0

    new-instance v0, Lk/E;

    invoke-direct {v0, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/v;->g:Lk/E;

    :cond_0
    iget-object p0, p0, Lk/v;->g:Lk/E;

    invoke-virtual {p0, p1}, Lk/E;->c(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/v;->e:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/v;->e:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->f(I)V

    :cond_0
    return-void
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/v;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p0, p0, Lk/v;->d:Lk/y;

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

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/v;->f:Lk/e0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/e0;->b()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/v;->f:Lk/e0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/e0;->b()V

    :cond_0
    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    iget-object v0, p0, Lk/v;->g:Lk/E;

    if-nez v0, :cond_0

    new-instance v0, Lk/E;

    invoke-direct {v0, p0}, Lk/E;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/v;->g:Lk/E;

    :cond_0
    iget-object v0, p0, Lk/v;->g:Lk/E;

    invoke-virtual {v0, p1}, Lk/E;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
