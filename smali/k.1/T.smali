.class public final Lk/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a0;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public d:Le/m;

.field public e:Landroid/widget/ListAdapter;

.field public f:Ljava/lang/CharSequence;

.field public final synthetic g:Lk/b0;


# direct methods
.method public constructor <init>(Lk/b0;)V
    .locals 0

    iput-object p1, p0, Lk/T;->g:Lk/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lk/T;->d:Le/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lk/T;->d:Le/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/F;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/T;->d:Le/m;

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lk/T;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final i(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final l(II)V
    .locals 4

    iget-object v0, p0, Lk/T;->e:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le/l;

    iget-object v1, p0, Lk/T;->g:Lk/b0;

    iget-object v1, v1, Lk/b0;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/l;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lk/T;->f:Ljava/lang/CharSequence;

    iget-object v2, v0, Le/l;->a:Le/h;

    if-eqz v1, :cond_1

    iput-object v1, v2, Le/h;->d:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Lk/T;->e:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lk/T;->g:Lk/b0;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iput-object v1, v2, Le/h;->n:Landroid/widget/ListAdapter;

    iput-object p0, v2, Le/h;->o:Landroid/content/DialogInterface$OnClickListener;

    iput v3, v2, Le/h;->u:I

    const/4 v1, 0x1

    iput-boolean v1, v2, Le/h;->t:Z

    invoke-virtual {v0}, Le/l;->a()Le/m;

    move-result-object v0

    iput-object v0, p0, Lk/T;->d:Le/m;

    iget-object v0, v0, Le/m;->i:Le/k;

    iget-object v0, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p0, p0, Lk/T;->d:Le/m;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final m()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lk/T;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final o(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lk/T;->e:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lk/T;->g:Lk/b0;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lk/T;->g:Lk/b0;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk/T;->g:Lk/b0;

    iget-object v0, p0, Lk/T;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Lk/T;->dismiss()V

    return-void
.end method
