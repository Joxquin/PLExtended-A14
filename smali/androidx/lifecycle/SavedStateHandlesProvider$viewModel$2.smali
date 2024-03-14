.class final Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic $viewModelStoreOwner:Landroidx/lifecycle/V;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/V;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;->$viewModelStoreOwner:Landroidx/lifecycle/V;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;->$viewModelStoreOwner:Landroidx/lifecycle/V;

    invoke-static {p0}, Landroidx/lifecycle/I;->c(Landroidx/lifecycle/V;)Landroidx/lifecycle/K;

    move-result-object p0

    return-object p0
.end method
