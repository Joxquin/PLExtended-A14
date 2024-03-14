.class public final Lj/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic d:Lj/J;


# direct methods
.method public constructor <init>(Lj/J;)V
    .locals 0

    iput-object p1, p0, Lj/H;->d:Lj/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lj/H;->d:Lj/J;

    invoke-virtual {v0}, Lj/J;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj/H;->d:Lj/J;

    iget-object v1, v0, Lj/J;->l:Lk/F0;

    iget-boolean v1, v1, Lk/C0;->B:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lj/J;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj/H;->d:Lj/J;

    iget-object p0, p0, Lj/J;->l:Lk/F0;

    invoke-virtual {p0}, Lk/C0;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lj/H;->d:Lj/J;

    invoke-virtual {p0}, Lj/J;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
