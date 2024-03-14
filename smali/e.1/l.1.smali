.class public final Le/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/h;

.field public final b:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Le/h;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Le/m;->h(ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p2, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Le/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/l;->a:Le/h;

    .line 5
    iput p1, p0, Le/l;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Le/m;->h(ILandroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Le/l;-><init>(ILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Le/m;
    .locals 13

    new-instance v0, Le/m;

    iget-object v7, p0, Le/l;->a:Le/h;

    iget-object v1, v7, Le/h;->a:Landroid/content/Context;

    iget p0, p0, Le/l;->b:I

    invoke-direct {v0, p0, v1}, Le/m;-><init>(ILandroid/content/Context;)V

    iget-object p0, v0, Le/m;->i:Le/k;

    iget-object v1, v7, Le/h;->e:Landroid/view/View;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    iput-object v1, p0, Le/k;->C:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, v7, Le/h;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput-object v1, p0, Le/k;->e:Ljava/lang/CharSequence;

    iget-object v2, p0, Le/k;->A:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v7, Le/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iput-object v1, p0, Le/k;->y:Landroid/graphics/drawable/Drawable;

    iput v8, p0, Le/k;->x:I

    iget-object v2, p0, Le/k;->z:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v1, v7, Le/h;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iput-object v1, p0, Le/k;->f:Ljava/lang/CharSequence;

    iget-object v2, p0, Le/k;->B:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, v7, Le/h;->g:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    iget-object v3, v7, Le/h;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1, v3}, Le/k;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object v1, v7, Le/h;->i:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, -0x2

    iget-object v3, v7, Le/h;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v1, v3}, Le/k;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object v1, v7, Le/h;->m:[Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_6

    iget-object v1, v7, Le/h;->n:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_e

    :cond_6
    iget v1, p0, Le/k;->G:I

    iget-object v2, v7, Le/h;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, v7, Le/h;->s:Z

    if-eqz v1, :cond_7

    new-instance v12, Le/e;

    iget-object v3, v7, Le/h;->a:Landroid/content/Context;

    iget v4, p0, Le/k;->H:I

    iget-object v5, v7, Le/h;->m:[Ljava/lang/CharSequence;

    move-object v1, v12

    move-object v2, v7

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Le/e;-><init>(Le/h;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_4

    :cond_7
    iget-boolean v1, v7, Le/h;->t:Z

    if-eqz v1, :cond_8

    iget v1, p0, Le/k;->I:I

    goto :goto_3

    :cond_8
    iget v1, p0, Le/k;->J:I

    :goto_3
    iget-object v12, v7, Le/h;->n:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_9

    goto :goto_4

    :cond_9
    new-instance v12, Le/j;

    iget-object v2, v7, Le/h;->m:[Ljava/lang/CharSequence;

    iget-object v3, v7, Le/h;->a:Landroid/content/Context;

    invoke-direct {v12, v3, v1, v2}, Le/j;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    :goto_4
    iput-object v12, p0, Le/k;->D:Landroid/widget/ListAdapter;

    iget v1, v7, Le/h;->u:I

    iput v1, p0, Le/k;->E:I

    iget-object v1, v7, Le/h;->o:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    new-instance v1, Le/f;

    invoke-direct {v1, v7, p0}, Le/f;-><init>(Le/h;Le/k;)V

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5

    :cond_a
    iget-object v1, v7, Le/h;->v:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_b

    new-instance v1, Le/g;

    invoke-direct {v1, v7, v11, p0}, Le/g;-><init>(Le/h;Landroidx/appcompat/app/AlertController$RecycleListView;Le/k;)V

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    :goto_5
    iget-boolean v1, v7, Le/h;->t:Z

    if-eqz v1, :cond_c

    invoke-virtual {v11, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_6

    :cond_c
    iget-boolean v1, v7, Le/h;->s:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_d
    :goto_6
    iput-object v11, p0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_e
    iget-object v1, v7, Le/h;->q:Landroid/view/View;

    if-eqz v1, :cond_f

    iput-object v1, p0, Le/k;->h:Landroid/view/View;

    iput v8, p0, Le/k;->i:I

    iput-boolean v8, p0, Le/k;->j:Z

    goto :goto_7

    :cond_f
    iget v1, v7, Le/h;->p:I

    if-eqz v1, :cond_10

    iput-object v9, p0, Le/k;->h:Landroid/view/View;

    iput v1, p0, Le/k;->i:I

    iput-boolean v8, p0, Le/k;->j:Z

    :cond_10
    :goto_7
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, v7, Le/h;->k:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v7, Le/h;->l:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_11

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_11
    return-object v0
.end method
