.class Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field public final synthetic d:Landroidx/activity/l;


# direct methods
.method public constructor <init>(Landroidx/activity/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/activity/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/activity/l;

    iget-object p1, p1, Landroidx/activity/l;->mContextAwareHelper:Lb/a;

    const/4 p2, 0x0

    iput-object p2, p1, Lb/a;->b:Landroid/content/Context;

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/activity/l;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/activity/ComponentActivity$4;->d:Landroidx/activity/l;

    invoke-virtual {p0}, Landroidx/activity/l;->getViewModelStore()Landroidx/lifecycle/U;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/U;->a()V

    :cond_0
    return-void
.end method
