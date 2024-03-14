.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lj/D;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field public d:Lj/r;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/RadioButton;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/CheckBox;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/LinearLayout;

.field public final m:Landroid/graphics/drawable/Drawable;

.field public final n:I

.field public final o:Landroid/content/Context;

.field public p:Z

.field public final q:Landroid/graphics/drawable/Drawable;

.field public final r:Z

.field public s:Landroid/view/LayoutInflater;

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040350

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ld/a;->r:[I

    invoke-static {v0, p2, v1, p3}, Lk/R0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lk/R0;

    move-result-object p2

    const/4 p3, 0x5

    .line 4
    invoke-virtual {p2, p3}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p2, p3, v0}, Lk/R0;->i(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:I

    const/4 p3, 0x7

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p3, v0}, Lk/R0;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    .line 7
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Landroid/content/Context;

    const/16 p3, 0x8

    .line 8
    invoke-virtual {p2, p3}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010129

    filled-new-array {p3}, [I

    move-result-object p3

    const v1, 0x7f0401c2

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->r:Z

    .line 12
    invoke-virtual {p2}, Lk/R0;->n()V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public final adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, v2

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public final b(Lj/r;)V
    .locals 12

    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lj/r;

    invoke-virtual {p1}, Lj/r;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lj/r;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lj/r;->isCheckable()Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    if-nez v5, :cond_3

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    if-nez v5, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lj/r;

    iget v5, v5, Lj/r;->x:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    const/4 v6, -0x1

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->a()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d0011

    invoke-virtual {v5, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_6
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    goto :goto_5

    :cond_7
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    if-nez v5, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->a()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d000e

    invoke-virtual {v5, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_8

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_9
    :goto_4
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    :goto_5
    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lj/r;

    invoke-virtual {v0}, Lj/r;->isChecked()Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_a
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_d

    invoke-virtual {v6, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_d
    :goto_6
    iget-object v0, p1, Lj/r;->n:Lj/o;

    invoke-virtual {v0}, Lj/o;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lj/r;->n:Lj/o;

    invoke-virtual {v0}, Lj/o;->n()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-char v0, p1, Lj/r;->j:C

    goto :goto_7

    :cond_e
    iget-char v0, p1, Lj/r;->h:C

    :goto_7
    if-eqz v0, :cond_f

    move v0, v4

    goto :goto_8

    :cond_f
    move v0, v1

    :goto_8
    iget-object v5, p1, Lj/r;->n:Lj/o;

    invoke-virtual {v5}, Lj/o;->n()Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lj/r;

    iget-object v5, v0, Lj/r;->n:Lj/o;

    invoke-virtual {v5}, Lj/o;->o()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Lj/r;->n:Lj/o;

    invoke-virtual {v5}, Lj/o;->n()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-char v0, v0, Lj/r;->j:C

    goto :goto_9

    :cond_10
    iget-char v0, v0, Lj/r;->h:C

    :goto_9
    if-eqz v0, :cond_11

    move v0, v4

    goto :goto_a

    :cond_11
    move v0, v1

    :goto_a
    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_b

    :cond_12
    move v0, v2

    :goto_b
    if-nez v0, :cond_1a

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lj/r;

    iget-object v7, v6, Lj/r;->n:Lj/o;

    invoke-virtual {v7}, Lj/o;->n()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-char v7, v6, Lj/r;->j:C

    goto :goto_c

    :cond_13
    iget-char v7, v6, Lj/r;->h:C

    :goto_c
    if-nez v7, :cond_14

    const-string v3, ""

    goto/16 :goto_f

    :cond_14
    iget-object v8, v6, Lj/r;->n:Lj/o;

    iget-object v8, v8, Lj/o;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lj/r;->n:Lj/o;

    iget-object v10, v10, Lj/o;->a:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v10

    if-eqz v10, :cond_15

    const v10, 0x7f130015

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v10, v6, Lj/r;->n:Lj/o;

    invoke-virtual {v10}, Lj/o;->n()Z

    move-result v10

    if-eqz v10, :cond_16

    iget v6, v6, Lj/r;->k:I

    goto :goto_d

    :cond_16
    iget v6, v6, Lj/r;->i:I

    :goto_d
    const v10, 0x7f130011

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-static {v6, v11, v10, v9}, Lj/r;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const v10, 0x7f13000d

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1000

    invoke-static {v6, v11, v10, v9}, Lj/r;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const v10, 0x7f13000c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v6, v11, v10, v9}, Lj/r;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const v10, 0x7f130012

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v4, v10, v9}, Lj/r;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const v10, 0x7f130014

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v3, v10, v9}, Lj/r;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const v3, 0x7f130010

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3, v9}, Lj/r;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eq v7, v2, :cond_19

    const/16 v3, 0xa

    if-eq v7, v3, :cond_18

    const/16 v3, 0x20

    if-eq v7, v3, :cond_17

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_17
    const v3, 0x7f130013

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_18
    const v3, 0x7f13000f

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_19
    const v3, 0x7f13000e

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_f
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_1b

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1b
    invoke-virtual {p1}, Lj/r;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lj/r;

    iget-object v3, v3, Lj/r;->n:Lj/o;

    iget-boolean v3, v3, Lj/o;->s:Z

    if-nez v3, :cond_1d

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->t:Z

    if-eqz v3, :cond_1c

    goto :goto_10

    :cond_1c
    move v4, v1

    :cond_1d
    :goto_10
    if-nez v4, :cond_1e

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-nez v3, :cond_1e

    goto :goto_14

    :cond_1e
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    if-nez v3, :cond_1f

    if-nez v0, :cond_1f

    iget-boolean v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-nez v5, :cond_1f

    goto :goto_14

    :cond_1f
    if-nez v3, :cond_21

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->a()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0d000f

    invoke-virtual {v3, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_20

    invoke-virtual {v5, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_11

    :cond_20
    invoke-virtual {p0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_21
    :goto_11
    if-nez v0, :cond_23

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-eqz v3, :cond_22

    goto :goto_12

    :cond_22
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :cond_23
    :goto_12
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    if-eqz v4, :cond_24

    goto :goto_13

    :cond_24
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_25
    :goto_14
    invoke-virtual {p1}, Lj/r;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Lj/r;->hasSubMenu()Z

    move-result v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/widget/ImageView;

    if-eqz v3, :cond_27

    if-eqz v0, :cond_26

    goto :goto_15

    :cond_26
    move v1, v2

    :goto_15
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_27
    iget-object p1, p1, Lj/r;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()Lj/r;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lj/r;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Landroidx/core/view/x;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a039b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    iget v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0339

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
