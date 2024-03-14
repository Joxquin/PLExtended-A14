.class public final Lf0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Landroid/widget/Button;

.field public final synthetic e:Lf0/x;


# direct methods
.method public constructor <init>(Lf0/x;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lf0/r;->e:Lf0/x;

    iput-object p2, p0, Lf0/r;->d:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    iget-object p1, p0, Lf0/r;->e:Lf0/x;

    iget-object v0, p1, Lf0/F;->d:Lf0/M;

    if-eqz v0, :cond_0

    new-instance v0, Lf0/c;

    invoke-virtual {p1}, Lf0/F;->b()I

    move-result p1

    iget-object v1, p0, Lf0/r;->e:Lf0/x;

    iget v2, v1, Lf0/x;->I:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, p1, v3, v4, v2}, Lf0/c;-><init>(IIII)V

    iget-object p1, v1, Lf0/F;->d:Lf0/M;

    iget-object v1, v1, Lf0/x;->J:Lf0/p;

    iget-object v1, v1, Lf0/G;->a:Landroidx/slice/SliceItem;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V

    :cond_0
    iget-object p1, p0, Lf0/r;->e:Lf0/x;

    iget-object v0, p1, Lf0/x;->J:Lf0/p;

    iget-object v0, v0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p1, Lf0/x;->G:Z

    iget-object p1, p0, Lf0/r;->e:Lf0/x;

    iget-boolean v0, p1, Lf0/x;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lf0/F;->l:Lf0/E;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lf0/x;->J:Lf0/p;

    iget-object v1, v1, Lf0/G;->a:Landroidx/slice/SliceItem;

    iget p1, p1, Lf0/x;->I:I

    invoke-virtual {v0, v1, p1}, Lf0/E;->c(Landroidx/slice/SliceItem;I)V

    :cond_1
    iget-object p1, p0, Lf0/r;->e:Lf0/x;

    iget-object v0, p1, Lf0/x;->F:Ljava/util/Set;

    iget-object p1, p1, Lf0/x;->J:Lf0/p;

    iget-object p1, p1, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf0/r;->d:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lf0/r;->e:Lf0/x;

    invoke-virtual {p0}, Lf0/x;->A()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
