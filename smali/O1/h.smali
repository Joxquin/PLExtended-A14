.class public final LO1/h;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public final synthetic d:LO1/l;


# direct methods
.method public constructor <init>(LO1/l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LO1/h;->d:LO1/l;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/view/Window;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, LO1/h;->d:LO1/l;

    iget-object p0, p0, LO1/l;->h:LO1/k;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    return-void
.end method
