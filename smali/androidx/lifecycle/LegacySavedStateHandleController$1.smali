.class Landroidx/lifecycle/LegacySavedStateHandleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field public final synthetic d:Landroidx/lifecycle/m;

.field public final synthetic e:La0/e;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/m;La0/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->d:Landroidx/lifecycle/m;

    iput-object p2, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->e:La0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->d:Landroidx/lifecycle/m;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/m;->c(Landroidx/lifecycle/p;)V

    iget-object p0, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->e:La0/e;

    invoke-virtual {p0}, La0/e;->d()V

    :cond_0
    return-void
.end method
