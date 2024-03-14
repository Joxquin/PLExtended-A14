.class public final Lj/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lj/B;


# instance fields
.field public final d:Lj/o;

.field public e:Le/m;

.field public f:Lj/k;


# direct methods
.method public constructor <init>(Lj/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/p;->d:Lj/o;

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lj/p;->d:Lj/o;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lj/p;->e:Le/m;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le/F;->dismiss()V

    :cond_1
    return-void
.end method

.method public final c(Lj/o;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lj/p;->d:Lj/o;

    iget-object p0, p0, Lj/p;->f:Lj/k;

    iget-object v0, p0, Lj/k;->i:Lj/j;

    if-nez v0, :cond_0

    new-instance v0, Lj/j;

    invoke-direct {v0, p0}, Lj/j;-><init>(Lj/k;)V

    iput-object v0, p0, Lj/k;->i:Lj/j;

    :cond_0
    iget-object p0, p0, Lj/k;->i:Lj/j;

    invoke-virtual {p0, p2}, Lj/j;->c(I)Lj/r;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lj/o;->q(Landroid/view/MenuItem;Lj/C;I)Z

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lj/p;->f:Lj/k;

    iget-object p0, p0, Lj/p;->d:Lj/o;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lj/k;->a(Lj/o;Z)V

    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lj/p;->e:Le/m;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lj/p;->e:Le/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lj/p;->d:Lj/o;

    invoke-virtual {p0, v1}, Lj/o;->c(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_2
    iget-object p0, p0, Lj/p;->d:Lj/o;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lj/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method
