.class public final Lj/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/b;


# instance fields
.field public A:Landroidx/core/view/c;

.field public B:Landroid/view/MenuItem$OnActionExpandListener;

.field public C:Z

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Intent;

.field public h:C

.field public i:I

.field public j:C

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public final n:Lj/o;

.field public o:Lj/L;

.field public p:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroid/content/res/ColorStateList;

.field public t:Landroid/graphics/PorterDuff$Mode;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lj/o;IIIILjava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lj/r;->i:I

    iput v0, p0, Lj/r;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lj/r;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Lj/r;->s:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lj/r;->t:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Lj/r;->u:Z

    iput-boolean v0, p0, Lj/r;->v:Z

    iput-boolean v0, p0, Lj/r;->w:Z

    const/16 v1, 0x10

    iput v1, p0, Lj/r;->x:I

    iput-boolean v0, p0, Lj/r;->C:Z

    iput-object p1, p0, Lj/r;->n:Lj/o;

    iput p3, p0, Lj/r;->a:I

    iput p2, p0, Lj/r;->b:I

    iput p4, p0, Lj/r;->c:I

    iput p5, p0, Lj/r;->d:I

    iput-object p6, p0, Lj/r;->e:Ljava/lang/CharSequence;

    iput p7, p0, Lj/r;->y:I

    return-void
.end method

.method public static c(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/view/c;)LG/b;
    .locals 2

    iget-object v0, p0, Lj/r;->A:Landroidx/core/view/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Landroidx/core/view/c;->a:Lj/q;

    :cond_0
    iput-object v1, p0, Lj/r;->z:Landroid/view/View;

    iput-object p1, p0, Lj/r;->A:Landroidx/core/view/c;

    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    iget-object p1, p0, Lj/r;->A:Landroidx/core/view/c;

    if-eqz p1, :cond_1

    new-instance v0, Lj/q;

    invoke-direct {v0, p0}, Lj/q;-><init>(Lj/r;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/c;->h(Lj/q;)V

    :cond_1
    return-object p0
.end method

.method public final b()Landroidx/core/view/c;
    .locals 0

    iget-object p0, p0, Lj/r;->A:Landroidx/core/view/c;

    return-object p0
.end method

.method public final collapseActionView()Z
    .locals 2

    iget v0, p0, Lj/r;->y:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lj/r;->z:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lj/r;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lj/r;->n:Lj/o;

    invoke-virtual {v0, p0}, Lj/o;->d(Lj/r;)Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lj/r;->w:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lj/r;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj/r;->v:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Lj/r;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/r;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lj/r;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj/r;->t:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/r;->w:Z

    :cond_3
    return-object p1
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lj/r;->y:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/r;->z:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/r;->A:Landroidx/core/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/core/view/c;->d(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lj/r;->z:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lj/r;->z:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final expandActionView()Z
    .locals 2

    invoke-virtual {p0}, Lj/r;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lj/r;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lj/r;->n:Lj/o;

    invoke-virtual {v0, p0}, Lj/o;->f(Lj/r;)Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 1

    iget p0, p0, Lj/r;->x:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lj/r;->x:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lj/r;->x:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lj/r;->x:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lj/r;->x:I

    :goto_0
    return-void
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj/r;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lj/r;->A:Landroidx/core/view/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/core/view/c;->d(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lj/r;->z:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAlphabeticModifiers()I
    .locals 0

    iget p0, p0, Lj/r;->k:I

    return p0
.end method

.method public final getAlphabeticShortcut()C
    .locals 0

    iget-char p0, p0, Lj/r;->j:C

    return p0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lj/r;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getGroupId()I
    .locals 0

    iget p0, p0, Lj/r;->b:I

    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lj/r;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lj/r;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lj/r;->m:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj/r;->n:Lj/o;

    iget-object v1, v1, Lj/o;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lj/r;->m:I

    iput-object v0, p0, Lj/r;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lj/r;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lj/r;->s:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lj/r;->t:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lj/r;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final getItemId()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget p0, p0, Lj/r;->a:I

    return p0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNumericModifiers()I
    .locals 0

    iget p0, p0, Lj/r;->i:I

    return p0
.end method

.method public final getNumericShortcut()C
    .locals 0

    iget-char p0, p0, Lj/r;->h:C

    return p0
.end method

.method public final getOrder()I
    .locals 0

    iget p0, p0, Lj/r;->c:I

    return p0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 0

    iget-object p0, p0, Lj/r;->o:Lj/L;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object p0, p0, Lj/r;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lj/r;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/r;->e:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lj/r;->r:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final hasSubMenu()Z
    .locals 0

    iget-object p0, p0, Lj/r;->o:Lj/L;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isActionViewExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lj/r;->C:Z

    return p0
.end method

.method public final isCheckable()Z
    .locals 1

    iget p0, p0, Lj/r;->x:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isChecked()Z
    .locals 1

    iget p0, p0, Lj/r;->x:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget p0, p0, Lj/r;->x:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVisible()Z
    .locals 3

    iget-object v0, p0, Lj/r;->A:Landroidx/core/view/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lj/r;->x:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object p0, p0, Lj/r;->A:Landroidx/core/view/c;

    invoke-virtual {p0}, Landroidx/core/view/c;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget p0, p0, Lj/r;->x:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final requiresActionButton()Z
    .locals 1

    iget p0, p0, Lj/r;->y:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final requiresOverflow()Z
    .locals 2

    invoke-virtual {p0}, Lj/r;->requiresActionButton()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget p0, p0, Lj/r;->y:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .line 8
    iget-object v0, p0, Lj/r;->n:Lj/o;

    .line 9
    iget-object v0, v0, Lj/o;->a:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 11
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lj/r;->z:Landroid/view/View;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lj/r;->A:Landroidx/core/view/c;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lj/r;->a:I

    if-lez v0, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 16
    :cond_0
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Lj/o;->k:Z

    .line 18
    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Lj/r;->z:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lj/r;->A:Landroidx/core/view/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lj/r;->a:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lj/o;->k:Z

    .line 7
    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Lj/r;->j:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lj/r;->j:C

    .line 3
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-char v0, p0, Lj/r;->j:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lj/r;->k:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lj/r;->j:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lj/r;->k:I

    .line 7
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Lj/r;->x:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Lj/r;->x:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    :cond_0
    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 9

    iget v0, p0, Lj/r;->x:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-object p1, p0, Lj/r;->n:Lj/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lj/r;->b:I

    iget-object v1, p1, Lj/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lj/o;->w()V

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_6

    iget-object v5, p1, Lj/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/r;

    iget v6, v5, Lj/r;->b:I

    if-ne v6, v0, :cond_5

    iget v6, v5, Lj/r;->x:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Lj/r;->isCheckable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    if-ne v5, p0, :cond_3

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    iget v6, v5, Lj/r;->x:I

    and-int/lit8 v8, v6, -0x3

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    or-int/2addr v7, v8

    iput v7, v5, Lj/r;->x:I

    if-eq v6, v7, :cond_5

    iget-object v5, v5, Lj/r;->n:Lj/o;

    invoke-virtual {v5, v3}, Lj/o;->p(Z)V

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lj/o;->v()V

    goto :goto_6

    :cond_7
    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    or-int p1, v2, v1

    iput p1, p0, Lj/r;->x:I

    if-eq v0, p1, :cond_9

    iget-object p1, p0, Lj/r;->n:Lj/o;

    invoke-virtual {p1, v3}, Lj/o;->p(Z)V

    :cond_9
    :goto_6
    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)LG/b;
    .locals 1

    .line 2
    iput-object p1, p0, Lj/r;->q:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/r;->setContentDescription(Ljava/lang/CharSequence;)LG/b;

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Lj/r;->x:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lj/r;->x:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lj/r;->x:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lj/r;->x:I

    :goto_0
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lj/r;->l:Landroid/graphics/drawable/Drawable;

    .line 6
    iput p1, p0, Lj/r;->m:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lj/r;->w:Z

    .line 8
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lj/r;->m:I

    .line 2
    iput-object p1, p0, Lj/r;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lj/r;->w:Z

    .line 4
    iget-object p1, p0, Lj/r;->n:Lj/o;

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lj/r;->s:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/r;->u:Z

    iput-boolean p1, p0, Lj/r;->w:Z

    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lj/r;->t:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/r;->v:Z

    iput-boolean p1, p0, Lj/r;->w:Z

    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lj/r;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Lj/r;->h:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-char p1, p0, Lj/r;->h:C

    .line 3
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-char v0, p0, Lj/r;->h:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lj/r;->i:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 5
    :cond_0
    iput-char p1, p0, Lj/r;->h:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lj/r;->i:I

    .line 7
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lj/r;->B:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lj/r;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Lj/r;->h:C

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lj/r;->j:C

    .line 3
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 4
    iput-char p1, p0, Lj/r;->h:C

    .line 5
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lj/r;->i:I

    .line 6
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lj/r;->j:C

    .line 7
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lj/r;->k:I

    .line 8
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lj/r;->y:I

    iget-object p0, p0, Lj/r;->n:Lj/o;

    iput-boolean v1, p0, Lj/o;->k:Z

    invoke-virtual {p0, v1}, Lj/o;->p(Z)V

    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lj/r;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 5
    iget-object v0, p0, Lj/r;->n:Lj/o;

    .line 6
    iget-object v0, v0, Lj/o;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/r;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Lj/r;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lj/r;->n:Lj/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj/o;->p(Z)V

    .line 3
    iget-object v0, p0, Lj/r;->o:Lj/L;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lj/L;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lj/r;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)LG/b;
    .locals 1

    .line 2
    iput-object p1, p0, Lj/r;->r:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lj/r;->n:Lj/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj/o;->p(Z)V

    return-object p0
.end method

.method public final bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/r;->setTooltipText(Ljava/lang/CharSequence;)LG/b;

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 3

    iget v0, p0, Lj/r;->x:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Lj/r;->x:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    iget-object p1, p0, Lj/r;->n:Lj/o;

    iput-boolean v1, p1, Lj/o;->h:Z

    invoke-virtual {p1, v1}, Lj/o;->p(Z)V

    :cond_2
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj/r;->e:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
