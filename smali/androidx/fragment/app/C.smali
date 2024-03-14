.class public final Landroidx/fragment/app/C;
.super Landroidx/fragment/app/U;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/fragment/app/K;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/C;->d:Landroidx/fragment/app/K;

    invoke-direct {p0}, Landroidx/fragment/app/U;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)Landroid/view/View;
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/C;->d:Landroidx/fragment/app/K;

    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment "

    const-string v1, " does not have a view"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/C;->d:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
