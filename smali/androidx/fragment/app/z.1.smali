.class public final Landroidx/fragment/app/z;
.super Landroidx/fragment/app/H;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/K;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/K;

    invoke-direct {p0}, Landroidx/fragment/app/H;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/K;

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedStateRegistryController:La0/f;

    invoke-virtual {v0}, La0/f;->a()V

    invoke-static {p0}, Landroidx/lifecycle/I;->b(La0/g;)V

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "registryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/K;->mSavedStateRegistryController:La0/f;

    invoke-virtual {p0, v0}, La0/f;->b(Landroid/os/Bundle;)V

    return-void
.end method
