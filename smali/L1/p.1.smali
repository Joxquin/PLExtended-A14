.class public final LL1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public final synthetic a:LJ1/x;

.field public final synthetic b:LL1/q;


# direct methods
.method public constructor <init>(LL1/q;LJ1/x;)V
    .locals 0

    iput-object p1, p0, LL1/p;->b:LL1/q;

    iput-object p2, p0, LL1/p;->a:LJ1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, LL1/p;->b:LL1/q;

    iget-object p1, p1, LL1/q;->b:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v0, p0, LL1/p;->a:LJ1/x;

    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ1/x;->c:LJ1/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LL1/p;->b:LL1/q;

    iget-object p0, p0, LL1/q;->h:LJ1/B;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method
