.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# instance fields
.field public final d:Ljava/util/List;

.field public final e:Lo2/i;

.field public final f:Ljava/util/LinkedHashSet;

.field public final g:Lo2/e;

.field public h:[Ljava/lang/Integer;

.field public i:Z

.field public j:Z

.field public final k:Z

.field public final l:I

.field public m:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040383

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const v0, 0x7f140473

    .line 3
    invoke-static {p1, p2, p3, v0}, LH2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/List;

    .line 5
    new-instance p1, Lo2/i;

    invoke-direct {p1, p0}, Lo2/i;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Lo2/i;

    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    .line 7
    new-instance p1, Lo2/e;

    invoke-direct {p1, p0}, Lo2/e;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:Lo2/e;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/Set;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 11
    sget-object v3, Li2/a;->n:[I

    const v5, 0x7f140473

    new-array v6, p1, [I

    move-object v2, p2

    move v4, p3

    .line 12
    invoke-static/range {v1 .. v6}, Lx2/r;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 13
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 14
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    if-eq v0, p3, :cond_0

    .line 15
    iput-boolean p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    .line 16
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(Ljava/util/Set;)V

    :cond_0
    const/4 p3, -0x1

    .line 17
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    const/4 p3, 0x1

    .line 18
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Z

    .line 19
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 20
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 22
    invoke-static {p0, p3}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget v6, v6, Lo2/d;->g:I

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v5, v5, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget v5, v5, Lo2/d;->g:I

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_5

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_5

    :cond_5
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v7

    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    neg-int v5, v5

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_6
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    neg-int v5, v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_6
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    if-ne v2, v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_9

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_a
    :goto_7
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    const-string p0, "MaterialButtonToggleGroup"

    const-string p1, "Child views must be of type MaterialButton."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    sget-object p2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Landroidx/core/view/y;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setId(I)V

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iput-boolean p2, p3, Lo2/d;->o:Z

    :cond_2
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Lo2/i;

    iput-object p3, p1, Lcom/google/android/material/button/MaterialButton;->i:Lo2/i;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p1, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iput-boolean p2, p3, Lo2/d;->m:Z

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object v1

    invoke-virtual {p3, p2}, Lo2/d;->b(Z)LC2/i;

    move-result-object p2

    if-eqz v1, :cond_5

    iget v2, p3, Lo2/d;->g:I

    int-to-float v2, v2

    iget-object v3, p3, Lo2/d;->j:Landroid/content/res/ColorStateList;

    iget-object v4, v1, LC2/i;->d:LC2/h;

    iput v2, v4, LC2/h;->k:F

    invoke-virtual {v1}, LC2/i;->invalidateSelf()V

    iget-object v2, v1, LC2/i;->d:LC2/h;

    iget-object v4, v2, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eq v4, v3, :cond_3

    iput-object v3, v2, LC2/h;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, LC2/i;->onStateChange([I)Z

    :cond_3
    if-eqz p2, :cond_5

    iget v1, p3, Lo2/d;->g:I

    int-to-float v1, v1

    iget-boolean v2, p3, Lo2/d;->m:Z

    if-eqz v2, :cond_4

    iget-object p3, p3, Lo2/d;->a:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f040146

    invoke-static {p3, v0}, Ls2/a;->b(Landroid/view/View;I)I

    move-result v0

    :cond_4
    iget-object p3, p2, LC2/i;->d:LC2/h;

    iput v1, p3, LC2/h;->k:F

    invoke-virtual {p2}, LC2/i;->invalidateSelf()V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v0, p2, LC2/i;->d:LC2/h;

    iget-object v1, v0, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p3, :cond_5

    iput-object p3, v0, LC2/h;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    invoke-virtual {p2, p3}, LC2/i;->onStateChange([I)Z

    :cond_5
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget-object p2, p2, Lo2/d;->b:LC2/n;

    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/List;

    new-instance v0, Lo2/g;

    iget-object v1, p2, LC2/n;->e:LC2/c;

    iget-object v2, p2, LC2/n;->f:LC2/c;

    iget-object v3, p2, LC2/n;->g:LC2/c;

    iget-object p2, p2, LC2/n;->h:LC2/c;

    invoke-direct {v0, v1, p2, v2, v3}, Lo2/g;-><init>(LC2/c;LC2/c;LC2/c;LC2/c;)V

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lo2/f;

    invoke-direct {p2, p0}, Lo2/f;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    invoke-static {p1, p2}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Button ID is not valid: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaterialButtonToggleGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Z

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_4

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(Ljava/util/Set;)V

    :cond_5
    return-void
.end method

.method public final c(I)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public final d(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:Lo2/e;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:[Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final e(Ljava/util/Set;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/Set;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v5, v4}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo2/h;

    invoke-interface {v6, v3, v4}, Lo2/h;->a(IZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:[Ljava/lang/Integer;

    if-eqz p0, :cond_1

    array-length p1, p0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "MaterialButtonToggleGroup"

    const-string p1, "Child order wasn\'t updated"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    :goto_1
    invoke-static {v1, v2, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->i:Lo2/i;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a()V

    return-void
.end method

.method public updateChildShapes()V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/2addr v1, v4

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_f

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v5, Lcom/google/android/material/button/MaterialButton;->g:Lo2/d;

    iget-object v6, v6, Lo2/d;->b:LC2/n;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, LC2/m;

    invoke-direct {v7, v6}, LC2/m;-><init>(LC2/n;)V

    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo2/g;

    if-ne v3, v4, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    move v8, v2

    :goto_5
    sget-object v9, Lo2/g;->e:LC2/a;

    if-ne v1, v3, :cond_9

    if-eqz v8, :cond_8

    invoke-static {p0}, Lx2/w;->a(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Lo2/g;

    iget-object v10, v6, Lo2/g;->b:LC2/c;

    iget-object v6, v6, Lo2/g;->c:LC2/c;

    invoke-direct {v8, v9, v9, v10, v6}, Lo2/g;-><init>(LC2/c;LC2/c;LC2/c;LC2/c;)V

    goto :goto_6

    :cond_7
    new-instance v8, Lo2/g;

    iget-object v10, v6, Lo2/g;->a:LC2/c;

    iget-object v6, v6, Lo2/g;->d:LC2/c;

    invoke-direct {v8, v10, v6, v9, v9}, Lo2/g;-><init>(LC2/c;LC2/c;LC2/c;LC2/c;)V

    :goto_6
    move-object v6, v8

    goto :goto_7

    :cond_8
    new-instance v8, Lo2/g;

    iget-object v10, v6, Lo2/g;->a:LC2/c;

    iget-object v6, v6, Lo2/g;->b:LC2/c;

    invoke-direct {v8, v10, v9, v6, v9}, Lo2/g;-><init>(LC2/c;LC2/c;LC2/c;LC2/c;)V

    goto :goto_6

    :cond_9
    if-ne v1, v4, :cond_c

    if-eqz v8, :cond_b

    invoke-static {p0}, Lx2/w;->a(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Lo2/g;

    iget-object v10, v6, Lo2/g;->a:LC2/c;

    iget-object v6, v6, Lo2/g;->d:LC2/c;

    invoke-direct {v8, v10, v6, v9, v9}, Lo2/g;-><init>(LC2/c;LC2/c;LC2/c;LC2/c;)V

    goto :goto_6

    :cond_a
    new-instance v8, Lo2/g;

    iget-object v10, v6, Lo2/g;->b:LC2/c;

    iget-object v6, v6, Lo2/g;->c:LC2/c;

    invoke-direct {v8, v9, v9, v10, v6}, Lo2/g;-><init>(LC2/c;LC2/c;LC2/c;LC2/c;)V

    goto :goto_6

    :cond_b
    new-instance v8, Lo2/g;

    iget-object v10, v6, Lo2/g;->d:LC2/c;

    iget-object v6, v6, Lo2/g;->c:LC2/c;

    invoke-direct {v8, v9, v10, v9, v6}, Lo2/g;-><init>(LC2/c;LC2/c;LC2/c;LC2/c;)V

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_d

    new-instance v6, LC2/a;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, LC2/a;-><init>(F)V

    iput-object v6, v7, LC2/m;->e:LC2/c;

    new-instance v6, LC2/a;

    invoke-direct {v6, v8}, LC2/a;-><init>(F)V

    iput-object v6, v7, LC2/m;->f:LC2/c;

    new-instance v6, LC2/a;

    invoke-direct {v6, v8}, LC2/a;-><init>(F)V

    iput-object v6, v7, LC2/m;->g:LC2/c;

    new-instance v6, LC2/a;

    invoke-direct {v6, v8}, LC2/a;-><init>(F)V

    iput-object v6, v7, LC2/m;->h:LC2/c;

    goto :goto_8

    :cond_d
    iget-object v8, v6, Lo2/g;->a:LC2/c;

    iput-object v8, v7, LC2/m;->e:LC2/c;

    iget-object v8, v6, Lo2/g;->d:LC2/c;

    iput-object v8, v7, LC2/m;->h:LC2/c;

    iget-object v8, v6, Lo2/g;->b:LC2/c;

    iput-object v8, v7, LC2/m;->f:LC2/c;

    iget-object v6, v6, Lo2/g;->c:LC2/c;

    iput-object v6, v7, LC2/m;->g:LC2/c;

    :goto_8
    new-instance v6, LC2/n;

    invoke-direct {v6, v7}, LC2/n;-><init>(LC2/m;)V

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->b(LC2/n;)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    return-void
.end method
