.class public final synthetic Landroidx/core/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field public final synthetic d:Landroidx/core/view/j;

.field public final synthetic e:Landroidx/core/view/k;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/j;Landroidx/core/view/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/g;->d:Landroidx/core/view/j;

    iput-object p2, p0, Landroidx/core/view/g;->e:Landroidx/core/view/k;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v0, p0, Landroidx/core/view/g;->d:Landroidx/core/view/j;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroidx/core/view/g;->e:Landroidx/core/view/k;

    invoke-virtual {v0, p0}, Landroidx/core/view/j;->a(Landroidx/core/view/k;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
