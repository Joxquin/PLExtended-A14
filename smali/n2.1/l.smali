.class public final Ln2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Ln2/q;


# direct methods
.method public constructor <init>(Ln2/q;)V
    .locals 0

    iput-object p1, p0, Ln2/l;->d:Ln2/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Ln2/l;->d:Ln2/q;

    iget-boolean v0, p1, Ln2/q;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ln2/l;->d:Ln2/q;

    iget-boolean v0, p1, Ln2/q;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101035b

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p1, Ln2/q;->n:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v2, p1, Ln2/q;->o:Z

    :cond_0
    iget-boolean p1, p1, Ln2/q;->n:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Ln2/l;->d:Ln2/q;

    invoke-virtual {p0}, Ln2/q;->cancel()V

    :cond_1
    return-void
.end method
